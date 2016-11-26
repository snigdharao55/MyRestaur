using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SubmitRegForm_Click(object sender, EventArgs e)
    {
        String message = "";
        if (fname.Text == "" || lname.Text == "" || uname.Text == "" || pwd.Text==""||cnfrmpwd.Text==""||emailid.Text==""||phoneno1.Text==""||address.Text=="")
        {
            if (fname.Text == "")
            {
                message = "first name";
            }
            if (lname.Text == "")
            {
                message += "last name";
            }
            if (uname.Text == "")
            {
                message += "user name";
            }
            if (pwd.Text == "")
            {
                message += "password";
            }
            if (emailid.Text == "")
            {
                message += "email id";
            }
            if (phoneno1.Text == "")
            {
                message += "phone number";
            }
            if (address.Text == "")
            {
                message += "address";
            }
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
        }
        else
        {
            if (pwd.Text == cnfrmpwd.Text)
            {
                string constr = ConfigurationManager.ConnectionStrings["RDB"].ConnectionString;
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@username", uname.Text.Trim());
                cmd.Parameters.AddWithValue("@email", emailid.Text.Trim());
                cmd.CommandText = "SELECT * FROM Registration_table WHERE UserName=@username OR Email_id=@email";
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Username or id already exists.\\nPlease choose a different username.');", true);
                    con.Close();
                }
                else
                {
                    con.Close();
                    con.Open();
                    cmd.CommandText = "INSERT INTO Registration_table values(@fname,@lname,@uname,@pwd,@emailid,@phone,@address)";
                    cmd.Parameters.AddWithValue("@fname", fname.Text.Trim());
                    cmd.Parameters.AddWithValue("@lname", lname.Text.Trim());
                    cmd.Parameters.AddWithValue("@uname", uname.Text.Trim());
                    cmd.Parameters.AddWithValue("@pwd", pwd.Text.Trim());
                    cmd.Parameters.AddWithValue("@emailid", emailid.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone", phoneno1.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", address.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('successfully registered');", true);
                    fname.Text = "";
                    lname.Text = "";
                    uname.Text = "";
                    emailid.Text = "";
                    phoneno1.Text = "";
                    address.Text = "";
                    pwd.Text = "";
                    cnfrmpwd.Text = "";
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Re type your passwords');", true);
            }
        }
    }
}