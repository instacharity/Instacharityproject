using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrustLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTrustLogin_Click(object sender, EventArgs e)
    {
        ServiceReference1.WebserviceSoapClient client = new ServiceReference1.WebserviceSoapClient();
        string emailid = txtTrustLoginEmailId.Text;
        string password = txtTrustLoginPassword.Text;
        string result = client.Organization_Login(emailid, password);
        lblTrustLoginResult.Text = result;

    }
}