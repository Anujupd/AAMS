using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Staff : System.Web.UI.Page
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
        cmd.CommandText = "insert into Staff values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString() + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        Label1.Text = "Record inserted successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}