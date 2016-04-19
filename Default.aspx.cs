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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label theLabel;

            theLabel = (Label)Master.FindControl("Welcome");
            theLabel.Text = Context.User.Identity.Name;
        }
        protected void btn_reg(object sender, EventArgs e)
        {
            Response.Redirect("RegUser.aspx");
        }
        protected void btn_submit_action(object sender, EventArgs e)
        {
            //get the connection to the database
           
        }
    }
}