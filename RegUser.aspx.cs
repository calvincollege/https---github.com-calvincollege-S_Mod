using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace S_Mod
{
    public partial class RegUser : System.Web.UI.Page
    {
        //DECLARE CONSTANTS
        const string CHECK_USER_QUERY = "select * from webuser.customer where emailaddress = @email";
        const string DUPLICATE_USER_ALERT = "Email address already registered. Please use log in screen.";
        const string GET_SECRET_QUESTION_QUERY = "select * from config.secret_question order by id asc";


        protected void Page_Load(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["dbcon"].ToString(); // connection string
            SqlConnection con = new SqlConnection(constr);
            con.Open();

            SqlCommand com = new SqlCommand(GET_SECRET_QUESTION_QUERY, con); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);  // fill dataset
            ddlsecretquestion.DataTextField = ds.Tables[0].Columns["question"].ToString(); // text field name of table dispalyed in dropdown
            ddlsecretquestion.DataValueField = ds.Tables[0].Columns["question"].ToString();             // to retrive specific  textfield name 
            ddlsecretquestion.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist
            ddlsecretquestion.DataBind();  //binding dropdownlist
        }

        //action to take when the submit button is clicked
        protected void btn_submit_action(object sender, EventArgs e)
        {
            //create the connection to the database
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ToString());
            //open the connection -- must be done before any calls to methods using the connection
            con.Open();
            //check to see if the user already exists within the system
            if (checkUserExists(con))
            {
                //display message instructing user to log in
                lblmsg.Text = DUPLICATE_USER_ALERT;
            }
            else
            {
                //nothing yet
            }


            SqlDataReader dr;
        }
        protected void btn_reg(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FName", fname.Text.Trim());
                        cmd.Parameters.AddWithValue("@LName", lname.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", email.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", pwd.Text.Trim());
                        cmd.Parameters.AddWithValue("@SQ", ddlsecretquestion.Text.Trim());
                        cmd.Parameters.AddWithValue("@SQR", sqresponse.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    default:
                        message = "Registration successful.\\nUser Id: " + userId.ToString();
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }

        protected Boolean checkUserExists(SqlConnection theConnection)
        {
            //declare new sql command and data reader to check results
            SqlCommand cmd = new SqlCommand();
            SqlDataReader theSqlDataReader;
            //set the command text
            cmd.CommandText = CHECK_USER_QUERY; ;
            //include the paramaters from the text boxes in the login form
            cmd.Parameters.AddWithValue("@Email", email.Text.Trim());
            //set the connection to the database
            cmd.Connection = theConnection;
            //execute the statement 
            theSqlDataReader = cmd.ExecuteReader();

            if (theSqlDataReader.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected String[] getSecretQuestions(SqlConnection theConnection)
        {
            //THIS METHOD WILL GO TO THE DATABASE AND FETCH ALL THE OPTIONS FOR SECRET QUESTION HINTS

            //declare new sql command and data reader to check results
            SqlCommand cmd = new SqlCommand();
            SqlDataReader theSqlDataReader;
            //set the command text
            cmd.CommandText = CHECK_USER_QUERY;
            //set the connection to the database
            cmd.Connection = theConnection;
            //execute the statement 
            theSqlDataReader = cmd.ExecuteReader();

            List<String> theList = new List<string>();
            while (theSqlDataReader.HasRows)
            {
                int i = 0;
                theList.Add(theSqlDataReader.GetValue(i).ToString());
                i++;

            }

            String[] theArray = theList.ToArray();
            lblmsg.Text = theArray[2];

            return theArray;
        }
    }
}