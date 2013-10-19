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
    protected void Display(object sender, EventArgs e)
    {
        if (ddlRegister.SelectedValue.Equals("Donor"))
        {

            Response.Redirect("DonorRegister.aspx");

        }
        else if (ddlRegister.SelectedValue.Equals("Organization"))
        {
            Response.Redirect("OrganizationRegister.aspx");
        }
    }
}