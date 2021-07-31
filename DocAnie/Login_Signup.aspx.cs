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
    public partial class Login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["role"] = null;
        }
        protected void loginbtn_Click(object sender, EventArgs e){
            // user login
            try{
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed){
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from useraccount where userid='" + userid.Text.Trim() + "' AND password='" + password.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows){
                    while (dr.Read())
                    {
                            Session["username"] = dr.GetValue(6).ToString();
                            Session["fullname"] = dr.GetValue(0).ToString();
                            Session["role"] = "user";
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Successful Login.');window.location='../Default.aspx';", true);
                    }
                }
                else{
                    Response.Write("<script>alert('Wrong Password/User ID');</script>");
                }
            }
            catch (Exception){
            }
        }
        protected void btnsignup_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                //signUpNewMember();
                if (txtname.Text != "" && txtgender.SelectedItem.Text != "Select" && txtdob.Text != "" && txtcontact.Text != "" && txtemail.Text != "" && txtaddress.Text != "" && useridsignup.Text != "" && passwordsignup.Text != "")
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd = new SqlCommand("INSERT INTO useraccount(fullname,gender,age,contact,email,address,userid,password) values(@fullname,@gender,@age,@contact,@email,@address,@userid,@password)", con);
                        cmd.Parameters.AddWithValue("@fullname", txtname.Text.Trim());
                        cmd.Parameters.AddWithValue("@gender", txtgender.Text.Trim());
                        cmd.Parameters.AddWithValue("@age", txtdob.Text.Trim());
                        cmd.Parameters.AddWithValue("@contact", txtcontact.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                        cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                        cmd.Parameters.AddWithValue("@userid", useridsignup.Text.Trim());
                        cmd.Parameters.AddWithValue("@password", passwordsignup.Text.Trim());
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                        userid.Text = useridsignup.Text;
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Fill-up all Text Field');</script>");
                }
            }
        }
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from normal where userid='" + useridsignup.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
    }
}