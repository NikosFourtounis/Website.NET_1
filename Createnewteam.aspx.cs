using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Createnewteam : System.Web.UI.Page
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
        string commandText = "Insert into team values (@id, @name, @dateFounded, @numberOfChampionships, @homeTrack)";
        using (mscon)
        {
            SqlCommand command = new SqlCommand(commandText, mscon);
            command.Parameters.Add("@id", SqlDbType.VarChar, 20).Value = TextBox1.Text;
            command.Parameters.Add("@name", SqlDbType.VarChar, 20).Value = TextBox2.Text;
            command.Parameters.Add("@dateFounded", SqlDbType.VarChar, 20).Value = TextBox3.Text;
            command.Parameters.Add("@numberOfChampionships", SqlDbType.Int, 20).Value = TextBox4.Text;
            command.Parameters.Add("@homeTrack", SqlDbType.VarChar, 20).Value = TextBox5.Text;
            try
            {
                mscon.Open();
                command.ExecuteNonQuery();
            }
            catch
            {
                Label4.Text = "Error occured";
            }
            finally
            {
                mscon.Close();
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("menu.aspx");
    }
}