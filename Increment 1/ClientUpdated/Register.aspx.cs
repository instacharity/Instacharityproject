using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDonorRegister_Click(object sender, EventArgs e)

    {
        ServiceReference1.WebserviceSoapClient client = new ServiceReference1.WebserviceSoapClient();
       
       string firstname = txtDonorRegisterFirstName.Text;

       string lastname = txtDonorRegisterLastName.Text;

       string emailid = txtDonorRegisterEmailId.Text;

       string password = txtDonorRegisterPassword.Text;

       string result=client.User_Registration(firstname, lastname, emailid, password);

       lblDonorRegisterResult.Text = result;

         

    }
}