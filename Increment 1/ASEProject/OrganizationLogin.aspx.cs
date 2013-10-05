using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrganizationLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        ServiceReference1.WebserviceSoapClient c = new ServiceReference1.WebserviceSoapClient("WebserviceSoap");
        string emailid = txtEmailAddress.Text;
        string password = txtPassword.Text;
        string Result = c.Organization_Login(emailid, password);
        lblResult.Text = Result;
    }
}