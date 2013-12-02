using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class organizationlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnorganizationlogin_Click(object sender, EventArgs e)
    {
        string emailid = txtorganizationemailid.Value;
        string pswd = txtorganizationloginpassword.Value;

        ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();

        string result = c.OrganizationLogin(emailid, pswd);



        if (result == "Y")
        {
            Session["OrganizationEmailId"] = txtorganizationemailid.Value;
            Response.Redirect("organizationhome.aspx");
        }
        if (result == "N")
        {

            txtorganizationemailid.Value = "";
            txtorganizationloginpassword.Value = "";
            //ClientScript.RegisterStartupScript(typeof(Page), "MessageBox", "<script type=\"text/javascript\">alert('Please enter correct username and password');</script>");
            lblError.Text = "Invalid Credentials.Please Try Again";

        }


    }
}