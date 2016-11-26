using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtreceived =(DataTable)Session["dtcart"];
        gvDetails.DataSource = dtreceived;
        gvDetails.DataBind();
    }
}