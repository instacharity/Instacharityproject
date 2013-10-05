using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ServiceReference1.WebserviceSoapClient c = new ServiceReference1.WebserviceSoapClient("WebserviceSoap");
        string firstname = txtFirstName.Text;
        string lastname = txtLastName.Text;
        string emailaddress = txtEmailId.Text;
        DateTime dob = DateTime.Parse(txtDOB.Text);
        string gender = txtGender.Text;
        string password = txtPassword.Text;
        string result = c.User_Registration(firstname, lastname, emailaddress, password, dob, gender);
        lblresult.Text = result;



    }
}