using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cuisine : System.Web.UI.Page
{
    DataTable myDt=new DataTable();
    //Logged_Username.Text = (String)Session["un1"];
    protected void Page_Load(object sender, EventArgs e)
    {
       /* if (!Page.IsPostBack)
        {*/
           // myDt = new DataTable();
        if (myDt.Rows.Count-1 == -1)
        {
            myDt = CreateDataTable();
            Session["dtcart"] = myDt;
        }
            /*this.GridView1.DataSource = ((DataTable)Session["myDatatable"]).DefaultView;
            this.GridView1.DataBind();*/
        //}
        if (Request.QueryString["i"] == "1")
        {
            AddtoCart("VegManchuria", 100);
        }
        else if (Request.QueryString["i"] == "2")
        {
            AddtoCart("Chicken Tawa", 120);
        }
    }

    private DataTable CreateDataTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("ItemName", typeof(string));
        dt.Columns.Add("Price", typeof(Int32));
        return dt;
    }
    protected void AddtoCart(String pItemname, int pPrice)
    {
        myDt.Rows.Add(pItemname, pPrice);
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Successfully posted the comment');", true);
        Response.Write("<script type='text/javascript'>");
        Response.Write("alert('This is alert2 if condition1 does not satisfy.');");
        Response.Write("</script>");
        Session["dtcart"] = myDt;
        /* gvDetails.DataSource = dt;
         gvDetails.DataBind();*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        AddtoCart("VegManchuria", 100);
    }
}