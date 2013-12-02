using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class ViewVideos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select FilePath from Image", conn4);
        cmd4.ExecuteNonQuery();
        StringBuilder st = new StringBuilder();
        Literal lt = new Literal();
        SqlDataReader reader;
        reader = cmd4.ExecuteReader();
        st.Append("<table border='1'>");
        st.Append("<tr>");
        st.Append("<th>Videos</th>");
        st.Append("</tr>");
        int count = 0;
        if (reader.HasRows)
        {
            while (reader.Read())
            {
                st.Append("<tr>"); 
                st.Append("<td>");
                st.Append("<div ID=" + count + " >");
                st.Append("<video class='center' width='500' height='300' controls>");
                st.Append("<source src=" + reader["FilePath"] + " type='video/mp4'>");
                st.Append("</video>");

                st.Append("</div>");

                
                st.Append("</tr>");

                count++;

            }
        }
        st.Append("</table>");
        lt.Text = st.ToString();
        plHolder.Controls.Add(lt);
    }
}