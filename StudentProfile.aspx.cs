using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StudentProfile : System.Web.UI.Page
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
        con.Close();
        
   
    }
    protected void reg_button_Click(object sender, EventArgs e)
    {
        con.Open();
        string strsql;
        strsql = "insert into StudentProfile values('" + address.Text + "','" + gender.Text + "','" + dateofbirth.Text + "','" + contact.Text + "','" + emailid.Text + "','" + Batch.Text + "','" + txtcompany.Text + "','" + txtposition.Text + "')";
        cmd = new SqlCommand(strsql, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("StudentHome.aspx");
        con.Close();
    }
}