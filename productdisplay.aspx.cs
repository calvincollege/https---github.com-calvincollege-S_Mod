using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Mod
{
    public partial class productdisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //open the connection to the database
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbcon"].ToString());
            con.Open();
            //load up the sql adapter with the query to select from products
            SqlDataAdapter theSqlDataAdapter = new SqlDataAdapter("Select * from webuser.products",con);
            //create a new datatable
            DataTable theDataTable = new DataTable();
            theSqlDataAdapter.Fill(theDataTable);

            // listView.DataSource = theDataTable;
            // listView.DataBind();
            ProductDataList.DataSource = theDataTable;
            ProductDataList.DataBind();
               
        }
    }
}