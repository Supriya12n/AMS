﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminPlacementCell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlDataAdapter ad;
        DataSet ds;
        SqlCommandBuilder cmd;
        con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\AMS.mdf;Integrated Security=True;User Instance=True");
        string query = "insert into Jobs(Title,Description)values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        ad = new SqlDataAdapter(query, con);
        ds = new DataSet();
        cmd = new SqlCommandBuilder(ad);
        con.Open();
        ad.Fill(ds, "Jobs");
        Response.Write(Label1.Text = "Job Post Added..!!");

    }
}