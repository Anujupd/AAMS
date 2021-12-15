using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = Connection.GetCon();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter Adp = new SqlDataAdapter();
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.Connection = con;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        con.Open();
        cmd = new SqlCommand(" Select * from login where UserName='" + Login1.UserName + "'and password='" + Login1.Password + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["un"] = Login1.UserName.ToString();
            Response.Redirect("Admin/Contact.aspx");

        }
        else
        {

            Login1.FailureText = "Enter valid UserName or Password";
        }
    }
}