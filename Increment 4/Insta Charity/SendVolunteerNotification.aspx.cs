using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class SendVolunteerNotification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)

    {

           string eventname = ddlEventName.SelectedValue;
           ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();
           String[] emailList = c.SendEmail(eventname).ToArray();

           string a="";
           foreach(String eachItem in emailList){
               a = eachItem+", "+a;         
           }
            a = a.Substring(0, a.Length - 2);
            string b = txtbody.Text;
            MailMessage MyMailMessage = new MailMessage("aditya.bhardwaja@gmail.com", a,"Donor Notifications", b);
            MyMailMessage.IsBodyHtml = false;
            NetworkCredential mailAuthentication = new NetworkCredential("instacharityumkc13@gmail.com", "techroos");
            SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
            mailClient.EnableSsl = true;
            mailClient.UseDefaultCredentials = false;
            mailClient.Credentials = mailAuthentication;
            mailClient.Send(MyMailMessage);
            lblResult.Text = "Sent Notifications Successfully"; 
        }


    
}


