using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ItemPage : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
        Logged_Username.Text = (String)Session["un1"];
        if (!this.IsPostBack)
        {
            this.BindListView();
        }
    }
    private void BindListView()
    {
        string constr = ConfigurationManager.ConnectionStrings["RDB"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT UserName, Comments FROM Comments_table where itemName=@itemname";
                cmd.Parameters.AddWithValue("@itemname", "item1");
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    CommentsListView.DataSource = dt;
                    CommentsListView.DataBind();
                }
            }
        }
    }

    protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (CommentsListView.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
        this.BindListView();
    }
    protected void SubmitComment_Click(object sender, EventArgs e)
    {

        if (Logged_Username.Text!="")
        {
            string constr = ConfigurationManager.ConnectionStrings["RDB"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO Comments_table values(@username,@itemname,@comment)";
            cmd.Parameters.AddWithValue("@username", Logged_Username.Text);
            cmd.Parameters.AddWithValue("@itemname", "item1");
            cmd.Parameters.AddWithValue("@comment", commentBox.Text);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Successfully posted the comment');", true);
            con.Close();
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('to post a comment login as a user');", true);
        }
    }
}