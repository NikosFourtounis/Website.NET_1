using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class championshipwinners : System.Web.UI.Page
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

        String str = "Select pilot.* from pilot,championship where championship.year=@year AND championship.winnerPilot=Pilot.surname";
        SqlCommand command = new SqlCommand(str, mscon);
        command.Parameters.AddWithValue("@year", DropDownList1.Text);
        String str1 = "Select team.* from team,championship where championship.year=@year AND championship.winnerTeam=team.name";
        SqlCommand command1 = new SqlCommand(str1, mscon);
        command1.Parameters.AddWithValue("@year", DropDownList1.Text);

        mscon.Open();
        command.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(command);
        sda.SelectCommand = command;
        DataSet ds = new DataSet();
        sda.Fill(ds, "Pilot");
        GridView1.DataSource = ds;
        GridView1.DataBind();
        command1.ExecuteNonQuery();
        SqlDataAdapter sda1 = new SqlDataAdapter(command1);
        sda1.SelectCommand = command1;
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1, "Team");
        GridView2.DataSource = ds1;
        GridView2.DataBind();
        mscon.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}