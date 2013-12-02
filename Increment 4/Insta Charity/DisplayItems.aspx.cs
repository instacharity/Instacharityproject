using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Configuration;

public partial class DisplayItems : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);

        //Open the connection
        conn.Open();

        string url = "";

        SqlCommand cmd = new SqlCommand("Select * From giveitem", conn);
        SqlDataReader reader = cmd.ExecuteReader();

        string var1 = "<table border='1'><tr><th>Item Name</th><th>Description</th><th>Location</th><th>Product</th><th>End date</th><th>End Time</th></tr>";
        int count = 0;
        while (reader.Read())
        {

            var1 += "<tr>";
            var1 += "<td>" + reader["Name"] + "</td>";
            var1 += "<td>" + reader["Description"] + "</td>";
            var1 += "<td>" + reader["Location"] + "</td>";
            url = reader["imageid"].ToString();
            var1 += "<td>" + "<img width = '100px' src='" + url + "' />" + "</td>";
            DateTime temp = Convert.ToDateTime(reader["enddt"].ToString());
            string temp_time = temp.ToString("MM-dd-yyyy");
            var1 += "<td><div class='dt'>" + temp_time + "</div></td>";
           var1 += "<td><div id='timer" + count + "'></div></td>";

            var1 += "</tr>";

            count++;

        }
        var1 += "</table>";


        reader.Close();
        //close the connection
        conn.Close();


        string i = "<img src='" + url + "' />";

        imgurl.InnerHtml = var1;
    }

    


}