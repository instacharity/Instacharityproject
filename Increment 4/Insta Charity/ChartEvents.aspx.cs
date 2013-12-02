using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class ChartEvents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal lt = new Literal();
        StringBuilder st = new StringBuilder();
        st.Append("<h4>Winter Clothes Drive</h4>");
        st.Append("<br />");
        st.Append("<img src='img.png'>");
        st.Append("<h4>Goal:1000;Achieved:333</h4>");
        st.Append("<h4>Charity Day</h4>");
        st.Append("<img src='im1.png'>");
        st.Append("<h4>Goal:1000;Achieved:600</h4>");
        lt.Text =st.ToString();

        PlaceHolder1.Controls.Add(lt);



    }

}