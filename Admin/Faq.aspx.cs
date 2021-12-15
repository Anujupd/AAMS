using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Faq : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-7BT3D31\ANUJ2;Initial Catalog=HMS;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter Adp = new SqlDataAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = con;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.CommandText = "insert into Faq values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+DateTime.Now.ToString()+"')";
        cmd.ExecuteNonQuery();
        Label1.Text = "Record inserted Successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";

    }
}