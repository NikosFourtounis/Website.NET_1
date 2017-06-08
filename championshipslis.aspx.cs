using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class championshipslis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("default.aspx");
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}