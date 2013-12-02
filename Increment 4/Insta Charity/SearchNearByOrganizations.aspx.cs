using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System.Drawing;

public partial class SearchNearByOrganizations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string latitude="";
        string longitude="";
        string zipcode = "";
        XmlTextReader Reader = new XmlTextReader("http://freegeoip.net/xml/");
        while (Reader.Read())
        {
            if (Reader.Name == "Latitude")
            {
                latitude = Reader.ReadString();
      
            }
            if (Reader.Name == "Longitude")
            {
                longitude = Reader.ReadString();

            }
            if (Reader.Name == "ZipCode")
            {
                zipcode = Reader.ReadString();
            }

        }

            Session["ZipCode"] = zipcode;
            GMap2.addGMapUI(new GMapUI());
            GMapUIOptions options = new GMapUIOptions();
            GLatLng latlong = new GLatLng(double.Parse(latitude),double.Parse(longitude));
            GMapType.GTypes maptype = GMapType.GTypes.Normal;
            GMap2.setCenter(latlong, 15, maptype);
            GMap2.GZoom = 9;
            PinLetter pinLetter = new PinLetter("o", Color.Red, Color.Black);

            GMap2.addGMarker(new GMarker(latlong, new GMarkerOptions(new GIcon(pinLetter.ToString(), pinLetter.Shadow()))));
            GMarker marker = new GMarker(latlong);
            GInfoWindowOptions IWoptions = new GInfoWindowOptions(12, maptype);

            //GInfoWindow mbUp = new GInfoWindow(marker,zip,IWoptions);
            //GMap2.addInfoWindow(mbUp);

           ServiceReference1.LocatorSoapClient c = new ServiceReference1.LocatorSoapClient();

           string count = c.CountOrganizations(zipcode);

           lblcount.Text = count;
    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewNearByOrganizationDetails.aspx");
    }
}
    


