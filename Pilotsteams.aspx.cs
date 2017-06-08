using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Pilotsteams : System.Web.UI.Page
{
    SqlConnection mscon = new SqlConnection("Data Source=ICSD-DB.aegean.gr\\ICSDMSSQLSRV;Initial Catalog=icsd13195;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("default.aspx");
        }
        String str = "select pilot.id, pilot.name,pilot.surname,teamroster.team from pilot left join teamroster on (pilot.id=teamroster.pilot1 or pilot.id=teamroster.pilot2)";
        SqlCommand command = new SqlCommand(str, mscon);
        mscon.Open();
        command.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(command);
        sda.SelectCommand = command;
        DataSet ds = new DataSet();
        sda.Fill(ds, "Pilot");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        mscon.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("createnewteam.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}