using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = Connection.GetCon();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter Adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = con;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.CommandText = "insert into Contact values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+DateTime.Now.ToString()+"')";
        cmd.ExecuteNonQuery();
        Label1.Text = "Your request send successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}