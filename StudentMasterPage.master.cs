using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str;
        str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\AMS.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(str);
        con.Open();
        if (Session["name"] == null)
        {
            Response.Redirect("NormalHome.aspx");
        }
        string strsql3 = "select emailid from Studentlist where firstname='" + Session["name"] + "'";
        cmd = new SqlCommand(strsql3, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Session["emailid"] = dr.GetString(0);
        con.Close();
    }
}
