using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S_Mod
{
    public partial class logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Logon_Click(object sender, EventArgs e)
        {
            if ((email.Text == "lewispark@hotmail.com") &&
                    (pwd.Text == "password"))
            {
                FormsAuthentication.RedirectFromLoginPage
                   (email.Text, Persist.Checked);
            }
            else
            {
                lblmsg.Text = "Invalid credentials. Please try again.";
            }
        }
    }
}