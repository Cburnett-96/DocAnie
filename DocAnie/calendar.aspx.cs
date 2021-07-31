using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data.SqlClient;

namespace DocAnie
{
    public partial class calendar : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private DataTable socialEvents;
        protected System.Web.UI.WebControls.DataGrid DataGrid1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Login or Sign Up.');window.location='../Login_Signup.aspx';", true);
            }
            else if (Session["role"].Equals("user") || Session["role"].Equals("admin"))
            {
                BuildSocialEventTable();
                harvesteventlist();
            }
        }
        private void BuildSocialEventTable()
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Harvest WHERE HarvestDate BETWEEN GETDATE() AND '12/30/2025' AND userid='" + Session["username"].ToString() + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            socialEvents = ds.Tables[0];
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            DataRow[] rows = socialEvents.Select(
          String.Format(
             "HarvestDate >= #{0}# AND HarvestDate < #{1}#",
             e.Day.Date.ToShortDateString(),
             e.Day.Date.AddDays(1).ToShortDateString()
          )
       );

            foreach (DataRow row in rows)
            {
                System.Web.UI.WebControls.Image image;
                image = new System.Web.UI.WebControls.Image();
                image.ImageUrl = this.ResolveUrl("Dot.jpg");
                image.ToolTip = row["ricevarietyname"].ToString();
                // e.Cell.Controls.Add(image);  
                e.Cell.BackColor = Color.Wheat;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            System.Data.DataView view = socialEvents.DefaultView;
            view.RowFilter = String.Format(
                              "HarvestDate >= #{0}# AND HarvestDate < #{1}#",
                              Calendar1.SelectedDate.ToShortDateString(),
                              Calendar1.SelectedDate.AddDays(1).ToShortDateString()
                           );

            if (view.Count > 0)
            {
                DataGrid1.Visible = true;
                DataGrid1.DataSource = view;
                DataGrid1.DataBind();
            }
            else
            {
                DataGrid1.Visible = false;
            }
        }
        void harvesteventlist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Harvest WHERE HarvestDate BETWEEN GETDATE() AND '12/30/2025' AND userid='" + Session["username"].ToString() + "' ORDER BY HarvestDate asc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnreadmore_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            string ID = (item.FindControl("Label1") as Label).Text;
            Session["id"] = ID;
            Response.Redirect("~/Rice.aspx");
        }
    }
}