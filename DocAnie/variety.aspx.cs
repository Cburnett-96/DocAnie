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
    public partial class variety : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            IRRIGATEDinbred();
            IRRIGATEDhybrid();
            GLUTINOUS();
            RAINFEDtrans();
            RAINFEDdry();
            COOLELEVATED();
            SALINE();
            UPLAND();
        }
        void IRRIGATEDinbred()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='IRRIGATED' AND Breeding='INBRED' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_IRRIGATED_inbred.DataSource = dt;
                Repeater_IRRIGATED_inbred.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void IRRIGATEDhybrid()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='IRRIGATED' AND Breeding='HYBRID' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_IRRIGATED_hybrid.DataSource = dt;
                Repeater_IRRIGATED_hybrid.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void GLUTINOUS()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='GLUTINOUS' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_GLUTINOUS.DataSource = dt;
                Repeater_GLUTINOUS.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void RAINFEDtrans()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='RAINFED' AND Breeding='TRANSPLANTED' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_RAINFED_trans.DataSource = dt;
                Repeater_RAINFED_trans.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void RAINFEDdry()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='RAINFED' AND Breeding='DRYSEEDED' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_RAINFED_dry.DataSource = dt;
                Repeater_RAINFED_dry.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void COOLELEVATED()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='COOL ELEVATED' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_COOL_ELEVATED.DataSource = dt;
                Repeater_COOL_ELEVATED.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void SALINE()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='SALINE' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_SALINE.DataSource = dt;
                Repeater_SALINE.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void UPLAND()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM RiceVariety where Ekolohiya='UPLAND' ORDER BY id desc;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Repeater_UPLAND.DataSource = dt;
                Repeater_UPLAND.DataBind();
                con.Close();
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