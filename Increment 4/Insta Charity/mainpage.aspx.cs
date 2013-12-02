using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mainpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnDonorLogin_Click(object sender, EventArgs e)
    {
        // Response.Redirect("donorlogin.aspx");
    }
    protected void btnDonorLogin_Click1(object sender, EventArgs e)
    {
        Response.Redirect("donorlogin.aspx");
    }
}