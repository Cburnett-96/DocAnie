using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DocAnie
{
    public partial class History : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Login or Sign Up.');window.location='../Login_Signup.aspx';", true);
            }
            else if (Session["role"].Equals("user") || Session["role"].Equals("admin"))
            {
                eventhistory();
            }
        }
        void eventhistory()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Harvest where userid='"+ Session["username"].ToString() + "' ORDER BY PlantDate desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_History.DataSource = dt;
                Repeater_History.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}