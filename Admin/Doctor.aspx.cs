using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_Doctor : System.Web.UI.Page
{
    SqlConnection con = Connection.GetCon();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter Adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = con ;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        FileUpload1.SaveAs(Server.MapPath("upic") + "/" + FileUpload1.FileName);
        cmd.CommandText = "insert into Doc values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + FileUpload1.FileName + "'," + TextBox6.Text + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','"+TextBox9.Text+"','" + DateTime.Now.ToString() + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        Label1.Text = "Record inserted successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";

    }
}