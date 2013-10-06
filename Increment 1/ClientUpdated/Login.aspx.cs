using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnDonorLogin_Click(object sender, EventArgs e)
    {
        ServiceReference1.WebserviceSoapClient client = new ServiceReference1.WebserviceSoapClient();
        string emailid = txtDonorLoginEmailId.Text;
        string password = txtDonorLoginPassword.Text;
        string result=client.User_Login(emailid, password);
        lblDonorLoginResult.Text = result;

        
       

    }
}