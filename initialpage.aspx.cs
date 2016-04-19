using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace S_Mod
{
    public partial class initialpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_reg(object sender, EventArgs e)
        {
            Response.Redirect("RegUser.aspx");
        }
        protected void btn_submit_action(object sender, EventArgs e)
        {
            //get the connection to the database
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ToString());
            SqlCommand cmd = new SqlCommand();
            SqlDataReader dr;

            //open the connection to the database, and assign it to the command connection
            cmd.Connection = con;
            con.Open();
            //set the user validation sql 
            cmd.CommandText = "select uid,emailaddress from webuser.customer where emailaddress=@email and password=@pwd";
            //assign the paramaters from the web page into the sql command
            cmd.Parameters.AddWithValue("@email", email.Text.Replace("'", ""));
            cmd.Parameters.AddWithValue("@pwd", pwd.Text.Replace("'", ""));
            //execute the command and read the data into the datareader
            dr = cmd.ExecuteReader();
            //check that data has been returned
            if (dr.HasRows)
            {
                //if yes, take the user to the homepage
                Response.Redirect("Default.aspx");

            }
            else
            {
                //alert the user that the password is incorrect
                lblmsg.Text = "Invalid Mobile/password";
            }
            //close the datareader and connection
            dr.Close();
            con.Close();
        }
    }
}
