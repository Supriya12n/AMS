using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentProfileView : System.Web.UI.Page
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
        
        string strsql1 = "select firstname from Studentlist where firstname='" + Session["name"] + "'";
        cmd = new SqlCommand(strsql1, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label14.Text = dr.GetString(0);
        dr.Close();

        string strsql2 = "select lastname from Studentlist where firstname='" + Session["name"] + "'";
        cmd = new SqlCommand(strsql2, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label15.Text = dr.GetString(0);
        dr.Close();
    
        string strsql3 = "select address from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql3, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label18.Text = dr.GetString(0);
        dr.Close();

        string strsql4 = "select address from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql4, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label19.Text = dr.GetString(0);
        dr.Close();

        string strsql5 = "select dob from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql5, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label20.Text = dr.GetString(0);
        dr.Close();

        string strsql6 = "select contactno from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql6, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label21.Text = dr.GetString(0);
        dr.Close();

        string strsql7 = "select email from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql7, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label22.Text = dr.GetString(0);
        dr.Close();

        string strsql8 = "select batch from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql8, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label23.Text = dr.GetString(0);
        dr.Close();

        string strsql9 = "select company from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql9, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label24.Text = dr.GetString(0);
        dr.Close();

        string strsql10 = "select position from StudentProfile where email='" + Session["emailid"] + "'";
        cmd = new SqlCommand(strsql10, con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
            Label25.Text = dr.GetString(0);
        dr.Close();
    
    }
    protected void reg_button_Click(object sender, EventArgs e)
    {

    }
}