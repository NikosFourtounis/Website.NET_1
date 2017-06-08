using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class selectrack : System.Web.UI.Page
{
    SqlConnection mscon = new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        String str = "Select * from track where country=@zip";
        SqlCommand command = new SqlCommand(str, mscon);
        command.Parameters.AddWithValue("@zip", DropDownList1.Text);
        
        mscon.Open();
        command.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(command);
        sda.SelectCommand = command;
        DataSet ds = new DataSet();
        sda.Fill(ds, "Country");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        mscon.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}