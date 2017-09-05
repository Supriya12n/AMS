using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sendemail("khanyusra802@gmail.com", "khanyusra802@gmail.com", "Hello", "<p> Feedbacks Details are as follow..! <br> Your Name :-" + TextBox1.Text + "<br> Email:-" + TextBox2.Text + "<br> Mobile:-" + TextBox3.Text + "<br>Subject:-" + TextBox4.Text + "</p>", "", true);

    }

    public Boolean sendemail(String strFrom, string strTo, string strSubject, string strBody, string strAttachmentPath, bool IsBodyHTML)
    {
        Array arrToArray;
        char[] splitter = { ';' };
        arrToArray = strTo.Split(splitter);
        MailMessage mm = new MailMessage();
        mm.From = new MailAddress(strFrom);
        mm.Subject = strSubject;
        mm.Body = strBody;
        mm.IsBodyHtml = IsBodyHTML;
        mm.ReplyTo = new MailAddress("replyto@gmail.com");
        foreach (string s in arrToArray)
        {
            mm.To.Add(new MailAddress(s));
        }
        if (strAttachmentPath != "")
        {
            try
            {
                //Add Attachment
                Attachment attachFile = new Attachment(strAttachmentPath);
                mm.Attachments.Add(attachFile);
            }
            catch { }
        }
        SmtpClient smtp = new SmtpClient();
        try
        {
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true; //Depending on server SSL Settings true/false
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "khanyusra802@gmail.com";
            NetworkCred.Password = "corpsepartywithghouls";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;//Specify your port No;
            smtp.Send(mm);
            return true;

        }
        catch
        {
            mm.Dispose();
            smtp = null;
            return false;
        }

    }

}