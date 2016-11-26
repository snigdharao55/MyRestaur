using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitLoginForm_Click(object sender, EventArgs e)
    {
        if (login_uname.Text == "" || login_pwd.Text == "")
        {
            if (login_uname.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter username');", true);
            }
            if (login_pwd.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter password');", true);
            }
        }
        else
        {
            string constr = ConfigurationManager.ConnectionStrings["RDB"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@username", login_uname.Text.Trim());
            cmd.Parameters.AddWithValue("@pwd", login_pwd.Text.Trim());
            cmd.CommandText = "SELECT * FROM Registration_table WHERE UserName=@username AND Password=@pwd";
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Successfully loggedin');", true);
                Session["un1"] = login_uname.Text;
                Response.Redirect("Itempage.aspx");
                
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Failed to login');", true);
            }
            con.Close();
        }
    }
}