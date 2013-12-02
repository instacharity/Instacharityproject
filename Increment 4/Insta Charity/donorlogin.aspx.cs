using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class donorlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndonorlogin_Click(object sender, EventArgs e)
    {
        string emailid = txtdonoremailid.Value;
        string pswd = txtdonorloginpassword.Value;



        ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();


        string result = c.DonorLogin(emailid, pswd);

        if (result.Equals("Success"))
        {
            Session["EmailId"] = txtdonoremailid.Value;
            Response.Redirect("donorhome.aspx");
            Response.End();

        }
        else
        {
            //Response.Redirect("donorlogin.aspx");
            lblResult.Text = "Invalid Credentials";
        }
    }

}











