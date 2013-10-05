using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrganizationRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtAddress_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        ServiceReference1.WebserviceSoapClient c = new ServiceReference1.WebserviceSoapClient("WebserviceSoap");
        string name = txtName.Text;
        string address = txtAddress.Text;
        string emailaddress = txtEmailAddress.Text;
        string password = txtPassword.Text;
        string result = c.Organization_Registration(emailaddress, name, address, password);      
        lblResult.Text = result;
    }
}