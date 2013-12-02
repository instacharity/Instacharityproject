using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

public partial class ViewOrganizations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select * from OrganizationRegister",conn4);
        cmd4.ExecuteNonQuery();
        StringBuilder st = new StringBuilder();
        Literal lt = new Literal();
        SqlDataReader reader;
        //List<String> strList = new List<String>();
        reader = cmd4.ExecuteReader();
        st.Append("<table border='1'>");
        st.Append("<tr>");
        st.Append("<th>Name</th>");
        st.Append("<th>URL</th>");
        st.Append("<th>EmailID</th>");
        st.Append("<th>Address</th>");
        st.Append("<th>City</th>");
        st.Append("<th>State</th>");
        st.Append("<th>Country</th>");
        st.Append("<th>ZIP</th>");
        st.Append("</tr>");
        int count =1;
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                
                st.Append("<tr>");
                st.Append("<td>" + reader["Name"] + "</td>");
                st.Append("<td>");
                st.Append("<a href=" +reader["URL"] + " target='_blank'>");
                st.Append(reader["URL"]);
                st.Append("</a>");
                st.Append("</td>");                    
                st.Append("<td>" + reader["EmailId"] + "</td>");
                st.Append("<td>" + reader["Address"] + "</td>");
                st.Append("<td>" + reader["City"] + "</td>");
                st.Append("<td>" + reader["State"] + "</td>");
                st.Append("<td>" + reader["Country"] + "</td>");
                st.Append("<td>" + reader["ZIP"] + "</td>");
                st.Append("<td>");
                st.Append("<a href='#' class='popper' data-popbox="+ count  +">Description</a>");

                st.Append("<div id=" + count + " class='popbox'>");
                st.Append("<h2>Description!</h2>");
                st.Append("<p>");
                st.Append(reader["Description"]);
                
                st.Append("</p>");

                st.Append("</tr>");
                count++;
                

                

                
            }
        }
        st.Append("</table>");
        lt.Text = st.ToString();
        plHolder.Controls.Add(lt);
    }
    }
   
