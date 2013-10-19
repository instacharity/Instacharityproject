using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrganizationEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {
            TextBox txtname = (TextBox)e.Item.FindControl("txtname");
            TextBox txtdescription = (TextBox)e.Item.FindControl("txtdescription");
            TextBox txtaddress = (TextBox)e.Item.FindControl("txtaddress");
            string insertCommand = "Insert into [Event] ([Name],[Description],[Address]) Values('" + txtname.Text + "', '" + txtdescription.Text + "', '" + txtaddress.Text + "');";
            SqlDataSource1.InsertCommand = insertCommand;
        }
        else if (e.CommandName == "Update")
        {
            TextBox txtEventId = (TextBox)e.Item.FindControl("txtEventId");
            TextBox txtName = (TextBox)e.Item.FindControl("txtName");
            TextBox txtDescription = (TextBox)e.Item.FindControl("txtDescription");
            TextBox txtAddress = (TextBox)e.Item.FindControl("txtAddress");
            string updateCommand = "Update [Event] set [Name]='" + txtName.Text + "', [Description]='" + txtDescription.Text + "', [Address]='" + txtAddress.Text + "' where EventId=" + Convert.ToInt32(txtEventId.Text) + ";";
            SqlDataSource1.UpdateCommand = updateCommand;
        }
        else if (e.CommandName == "Delete")
        {
            TextBox txtEventId = (TextBox)e.Item.FindControl("txtEventId");
            string deleteCommand = "delete from [Event] where EventId=" + Convert.ToInt32(txtEventId.Text);
            SqlDataSource1.DeleteCommand = deleteCommand;
        }
    }
}