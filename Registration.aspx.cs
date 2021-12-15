using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Registration : System.Web.UI.Page
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
        FileUpload1.SaveAs(Server.MapPath("upic") + "/" + FileUpload1.FileName);
        cmd.CommandText = "insert into Registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + (RadioButton1.Checked ? "Male" : "Female") + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "'," + TextBox5.Text + ",'" + TextBox6.Text + "'," + TextBox7.Text + ",'" + TextBox8.Text + "','" + FileUpload1.FileName + "','"+DateTime.Now.ToString()+"')";
        cmd.ExecuteNonQuery();
        cmd.CommandText = "insert into login values('" + TextBox1.Text.Replace("'", "''") + "','" + TextBox2.Text.Replace("'", "''") + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Record inserted Succesfully";
        Response.Redirect("Login.aspx");
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";


       
    }
}