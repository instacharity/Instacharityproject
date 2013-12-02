using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JoinVolunteer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnJoin_Click(object sender, EventArgs e)
    {
        
        string name = txtName.Value;
        string mobilenum = txtMobileNum.Value;
        string emailid = txtEmailId.Value;
        string city = txtCity.Value;
        string zip = txtZIP.Value;
        string eventname = ddlEvent.SelectedValue;

        ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();
        lblResult.ForeColor = System.Drawing.Color.Green;
        txtName.Value = "";
        txtMobileNum.Value = "";
        txtEmailId.Value = "";
        txtCity.Value = "";
        txtZIP.Value = "";

        lblResult.Text = c.JoinVolunteer(name, mobilenum, emailid, city, zip,eventname);
              

    }
}