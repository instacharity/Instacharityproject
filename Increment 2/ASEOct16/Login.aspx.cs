using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Display(object sender, EventArgs e)
    {
        if (ddlLogin.SelectedValue.Equals("Donor"))
        {

            Response.Redirect("DonorLogin.aspx");

        }
        else if (ddlLogin.SelectedValue.Equals("Organization"))
        {
            Response.Redirect("OrganizationLogin.aspx");
        }
    }
}