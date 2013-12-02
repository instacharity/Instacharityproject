using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.Text;

public partial class donorsignup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndonorsignup_Click(object sender, EventArgs e)
    {
        decimal latitude;
        decimal longitude;
        XmlTextReader Reader = new XmlTextReader("http://api.hostip.info/get_xml.php");
        while (Reader.Read())
        {
            if (Reader.Name == "gml:coordinates")
            {
                string[] coordinates = Reader.ReadString().Split(new char[] { ',' });
                longitude = decimal.Parse(coordinates[0]);
                latitude = decimal.Parse(coordinates[1]);
                ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();
                c.StoreIpAddress(latitude, longitude);
            }

        }

        string fname = txtdonorsignupfirstname.Value;
        string lname = txtdonorsignuplastname.Value;
        string emailid = txtdonorsignupemailid.Text;
        string address = txtdonorsignupaddress.Value;
        string city = txtdonorsignupcity.Text;
        string state = txtdonorsignupstate.Text;
        string country = txtdonorsignupcountry.Text;
        string zip = txtdonorsignupzipcode.Text;
        string pswd = txtdonorsignuppassword.Value;
        string result;

        ServiceReference1.LocatorSoapClient c1 = new ServiceReference1.LocatorSoapClient();

        result = c1.DonorRegister(fname, lname, emailid, address, city, state, country, zip, pswd);

        if (result.Equals("Account Registered Successfully"))
        {
            lblResult.ForeColor = System.Drawing.Color.Green;
            lblResult.Text = "Account Registered Successfully.Please Login";
            Literal lt = new Literal();
            StringBuilder st = new StringBuilder();
            st.Append("<a href='donorlogin.aspx'>Click to Login</a>");

            lt.Text = st.ToString();
            plHolder.Controls.Add(lt);
            txtdonorsignupfirstname.Value = "";
            txtdonorsignuplastname.Value = "";
            txtdonorsignupemailid.Text = "";
            txtdonorsignupaddress.Value = "";
            txtdonorsignupcity.Text = "";
            txtdonorsignupstate.Text = "";
            txtdonorsignupcountry.Text = "";
            txtdonorsignupzipcode.Text = "";
            txtdonorsignuppassword.Value = "";
        }
        else
        {

            lblResult.Text = "Account Already Exists";


        }

    }
}