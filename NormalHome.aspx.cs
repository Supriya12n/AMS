using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string strsql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            Session["name"] = null;
        }
        string str;
        str = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\AMS.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(str);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals("Admin") && TextBox2.Text.Equals("Admin"))
        {
            strsql = "select * from Adminlist where firstname='" + TextBox1.Text + "'" + "and password='" + TextBox2.Text + "'";
            
        }
        else
        {
            strsql = "select firstname from Studentlist where firstname='" + TextBox1.Text + "'" + "and password='" + TextBox2.Text + "'";
            
        }

        cmd = new SqlCommand(strsql, con);
        dr = cmd.ExecuteReader();
        if (dr.Read() == true)
        {
            if (TextBox1.Text.Equals("Admin"))
            {
                //Session["userid1"] = dr.GetValue(0).ToString();
                Session["name"] = dr.GetValue(0).ToString();
                Response.Redirect("AdminHome.aspx");

            }
            else
            {
                //Session["userid1"] = dr.GetValue(0).ToString();
                Session["name"] = dr.GetValue(0).ToString();
                Response.Redirect("StudentHome.aspx");

            }
        }
        else
        {
            Response.Write("Invalid Login...!!");
        }
    }
}