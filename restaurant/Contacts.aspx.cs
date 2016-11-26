using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendButton(object sender, EventArgs e)
    {
        if (txtName.Text == "" || txtemail.Text == "" || txtmsg.Text == "")
        {
            if (txtName.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter your name');", true);
            }
            if (txtemail.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter your email');", true);

            }
            if (txtmsg.Text == "")
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Enter your message');", true);
            }
        }
        else
        {
            string constr = ConfigurationManager.ConnectionStrings["RDB"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Contacts_table values(@name,@email,@msg)";
            cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@msg", txtmsg.Text.Trim());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('successfully message has been sent');", true);
            txtName.Text = "";
            txtemail.Text = "";
            txtmsg.Text = "";
        }
    }
    protected void ClearButton(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtmsg.Text = "";
        txtemail.Text = "";
    }

}