using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrustRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTrustRegister_Click(object sender, EventArgs e)
    {
        ServiceReference1.WebserviceSoapClient client = new ServiceReference1.WebserviceSoapClient();
        string name = txtTrustRegisterName.Text;
        string emailid = txtTrustRegisterEmailId.Text;
        string address = txtTrustRegisterAddress.Text;
        string password = txtTrustRegisterPassword.Text;
        string result = client.Organization_Registration(emailid, name, address, password);
        lblTrustRegiterResult.Text = result;
    }
}