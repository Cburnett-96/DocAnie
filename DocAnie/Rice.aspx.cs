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
    public partial class Rice : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string RiceVarName, maturity, Pests_Diseases, Milling_Recovery;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]))
            {
                btnplantnow.Visible = false;
            }
            else if (Session["role"].Equals("user") || Session["role"].Equals("admin"))
            {
                btnplantnow.Visible = true;
            }
            getricelist();
        }
        void getricelist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where id="+ Session["id"].ToString() + ";", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
                RiceVarName = dt.Rows[0]["ricevarietyname"].ToString();
                maturity = dt.Rows[0]["Maturity"].ToString();
                Pests_Diseases = dt.Rows[0]["PestsDiseases"].ToString();
                Milling_Recovery = dt.Rows[0]["MillingRecovery"].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnplantnow_Click(object sender, EventArgs e)
        {
            int days = Convert.ToInt32(maturity);
            DateTime datetoday = DateTime.Today;
            DateTime dt = DateTime.Now;
            dt = dt.AddDays(days);
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Harvest(HarvestDate,RiceID,ricevarietyname,PestsDiseases,MillingRecovery,PlantDate,userid)" +
                            " values(@HarvestDate,@RiceID,@ricevarietyname,@PestsDiseases,@MillingRecovery,@PlantDate,@userid)", con);
                cmd.Parameters.AddWithValue("@HarvestDate", dt);
                cmd.Parameters.AddWithValue("@RiceID", Session["id"].ToString());
                cmd.Parameters.AddWithValue("@ricevarietyname", RiceVarName);
                cmd.Parameters.AddWithValue("@PestsDiseases", Pests_Diseases);
                cmd.Parameters.AddWithValue("@MillingRecovery", Milling_Recovery);
                cmd.Parameters.AddWithValue("@PlantDate", datetoday);
                cmd.Parameters.AddWithValue("@userid", Session["username"].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Successful Submit.');window.location='../calendar.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}