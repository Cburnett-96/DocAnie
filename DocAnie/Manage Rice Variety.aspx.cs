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
    public partial class Manage_Rice_Variety : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["role"]))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Please Login or Sign Up.');window.location='../AdminLogin.aspx';", true);
            }
            else if (Session["role"].Equals("admin"))
            {
                getricelist();
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (txtricevarname.Text != "" && txtpestdiseases.Text != "" && txtmilrecovery.Text != "" && txtmaxyield.Text != "" && txtmaturity.Text != "" && txtheight.Text != "" && txtaveyield.Text != "" && drpEkolohiya.SelectedIndex != 0 && drpgrainsize.SelectedIndex != 0 && drpeatquality.SelectedIndex != 0)
            {
                if (FileUpload1.HasFile)
                {
                    string strimagename = FileUpload1.FileName.ToString();
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/RiceVarietyImg/") + strimagename);
                    try
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd = new SqlCommand("INSERT INTO RiceVariety(ricevarietyname,AverageYield,MaximumYield,Maturity,Height,PestsDiseases,EatingQuality,GrainSize,MillingRecovery,riceimage,Ekolohiya,Breeding)" +
                            " values(@ricevarietyname,@AverageYield,@MaximumYield,@Maturity,@Height,@PestsDiseases,@EatingQuality,@GrainSize,@MillingRecovery,@riceimage,@Ekolohiya,@Breeding)", con);
                        cmd.Parameters.AddWithValue("@ricevarietyname", txtricevarname.Text.Trim());
                        cmd.Parameters.AddWithValue("@AverageYield", txtaveyield.Text.Trim());
                        cmd.Parameters.AddWithValue("@MaximumYield", txtmaxyield.Text.Trim());
                        cmd.Parameters.AddWithValue("@Maturity", txtmaturity.Text.Trim());
                        cmd.Parameters.AddWithValue("@Height", txtheight.Text.Trim());
                        cmd.Parameters.AddWithValue("@PestsDiseases", txtpestdiseases.Text.Trim());
                        cmd.Parameters.AddWithValue("@EatingQuality", drpeatquality.SelectedValue.Trim());
                        cmd.Parameters.AddWithValue("@GrainSize", drpgrainsize.SelectedValue.Trim());
                        cmd.Parameters.AddWithValue("@MillingRecovery", txtmilrecovery.Text.Trim());
                        cmd.Parameters.AddWithValue("@riceimage", strimagename);
                        cmd.Parameters.AddWithValue("@Ekolohiya", drpEkolohiya.SelectedValue.Trim());
                        if (drpEkolohiya.SelectedIndex == 1)
                        {
                            cmd.Parameters.AddWithValue("@Breeding", drpbreedIrrigated.SelectedValue.Trim());
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Response.Write("<script>alert('Successful Submit.');</script>");
                            getricelist();
                            drpbreedrainfed.Visible = false;
                        }
                        else if (drpEkolohiya.SelectedIndex == 3)
                        {
                            cmd.Parameters.AddWithValue("@Breeding", drpbreedrainfed.SelectedValue.Trim());
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Response.Write("<script>alert('Successful Submit.');</script>");
                            getricelist();
                            drpbreedIrrigated.Visible = false;
                        }
                        else
                        {
                            cmd.Parameters.AddWithValue("@Breeding", "");
                            cmd.ExecuteNonQuery();
                            con.Close();
                            Response.Write("<script>alert('Successful Submit.');</script>");
                            getricelist();
                            drpbreedIrrigated.Visible = false;
                            drpbreedrainfed.Visible = false;
                            breed.Visible = false;
                        }
                        txtricevarname.Text = "";
                        txtpestdiseases.Text = "";
                        txtmilrecovery.Text = "";
                        txtmaxyield.Text = "";
                        txtmaturity.Text = "";
                        txtheight.Text = "";
                        txtaveyield.Text = "";
                        drpeatquality.SelectedIndex = 0;
                        drpEkolohiya.SelectedIndex = 0;
                        drpgrainsize.SelectedIndex = 0;
                        drpbreedIrrigated.Visible = false;
                        drpbreedrainfed.Visible = false;
                        breed.Visible = false;
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Upload the image!!!!');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Fill-up all Text Field');</script>");
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            if (txtriceid.Text != "")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from RiceVariety WHERE id=" + txtriceid.Text.Trim() + "", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Successfully Remove');</script>");
                    getricelist();
                    txtriceid.Text = "";
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Fill-up');</script>");
            }
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
                SqlCommand cmd = new SqlCommand("SELECT id AS [Rice ID], ricevarietyname AS [Rice Name] from RiceVariety;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void drpEkolohiya_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drpEkolohiya.SelectedIndex == 1)
            {
                drpbreedIrrigated.Visible = true;
                breed.Visible = true;
                drpbreedrainfed.Visible = false;
            }
            else if (drpEkolohiya.SelectedIndex == 3)
            {
                drpbreedrainfed.Visible = true;
                breed.Visible = true;
                drpbreedIrrigated.Visible = false;
            }
            else
            {
                drpbreedIrrigated.Visible = false;
                drpbreedrainfed.Visible = false;
                breed.Visible = false;
            }
        }
    }
}