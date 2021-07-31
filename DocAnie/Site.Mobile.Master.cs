using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocAnie
{
    public partial class Site_Mobile : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]))
            {
                linkbtnlogout.Visible = false;
                linkbtnlogin.Visible = true;
            }
            else
            {
                linkbtnlogout.Visible = true;
                linkbtnlogin.Visible = false;
                lblGreeting.Text = "Welcome " + Session["fullname"].ToString();
                history.Visible = true;
                calendar.Visible = true;
            }
        }
        protected void linkbtnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Signup.aspx");
        }

        protected void linkbtnlogout_Click(object sender, EventArgs e)
        {
            Session["role"] = null;
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("Login_Signup.aspx");
            history.Visible = false;
            calendar.Visible = false;
        }
    }
}