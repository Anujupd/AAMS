using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Connection
/// </summary>
public class Connection
{
    public static SqlConnection GetCon()
    {
        SqlConnection Cn = new SqlConnection(ConfigurationManager.ConnectionStrings["HMSConnectionString"].ToString());
        return Cn;
    }
	public Connection()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}