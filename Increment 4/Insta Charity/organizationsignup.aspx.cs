using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class organizationsingup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnorganizationsignup_Click(object sender, EventArgs e)
    {
        string name = txtorganizationsignupname.Text;
        string description = txtDescription.Text;
        string url = txtorganizationsignupurl.Text;
        string emailid = txtorganizationsignupemailid.Text;
        string address = txtorganizationsignupaddress.Text;
        string city = txtorganizationsignupcity.Text;
        string state = txtorganizationsignupstate.Text;
        string country = txtorganizationsignupcountry.Text;
        string zip = txtorganizationsignupzipcode.Text;
        string pswd = txtorganizationsignuppassword.Text;

        ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();
        string result = c.OrganizationRegister(name, description, url, emailid, address, city, state, country, zip, pswd);

        if (result.Equals("Account Registered Successfully"))
        {
            lblresult.ForeColor = System.Drawing.Color.Green;
            lblresult.Text = "Account Registered Successfully.Please Login";
            Literal lt = new Literal();
            StringBuilder st = new StringBuilder();
            st.Append("<a href='organizationlogin.aspx'>Click to Login</a>");

            lt.Text = st.ToString();
            plHolder.Controls.Add(lt);
            txtorganizationsignupname.Text = "";
            txtDescription.Text = "";
            txtorganizationsignupurl.Text = "";
            txtorganizationsignupemailid.Text = "";
            txtorganizationsignupaddress.Text = "";
            txtorganizationsignupcity.Text = "";
            txtorganizationsignupstate.Text = "";
            txtorganizationsignupcountry.Text = "";
            txtorganizationsignupzipcode.Text = "";
            txtorganizationsignuppassword.Text = "";
        }
        else
        {
            lblresult.Text = "Account Already Exists";


        }



    }
}