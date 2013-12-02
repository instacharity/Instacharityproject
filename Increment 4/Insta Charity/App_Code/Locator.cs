using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


/// <summary>
/// Summary description for Locator
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Locator : System.Web.Services.WebService
{

    public Locator()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod(Description = "Locate Organization zip")]
    public string LocateOrganizationZip(string zip)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select ZIP from OrganizationRegister where ZIP='" + zip + "'", conn);
        string data = cmd.ExecuteScalar().ToString();
        cmd.Dispose();
        conn.Close();
        return data;
    }

    [WebMethod(Description = "Locate Event Zip")]
    public string LocateZip(string zip)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select ZIP from Event where ZIP='" + zip + "'", conn);
        string data = cmd.ExecuteScalar().ToString();
        cmd.Dispose();
        conn.Close();
        return data;
    }
    [WebMethod(Description = "Locate City")]
    public string LocateCity(string zip)
    {
        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn1.Open();
        SqlCommand cmd1 = new SqlCommand("Select City from Event where ZIP='" + zip + "'", conn1);
        //  SqlDataReader data1 = null;
        string data1 = cmd1.ExecuteScalar().ToString();
        return data1;
        cmd1.Dispose();
        conn1.Close();
    }
    [WebMethod(Description = "Locate State")]
    public string LocateState(string zip)
    {
        SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn2.Open();
        SqlCommand cmd2 = new SqlCommand("Select State from Event where ZIP='" + zip + "'", conn2);
        //  SqlDataReader data2 = null;
        string data2 = cmd2.ExecuteScalar().ToString();
        return data2;
        cmd2.Dispose();
        conn2.Close();

    }
    [WebMethod(Description = "counting Events")]
    public string CountEvents(string zip)
    {
        SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn3.Open();
        SqlCommand cmd3 = new SqlCommand("Select  count(*) from Event where ZIP='" + zip + "'", conn3);
        //  SqlDataReader data2 = null;
        string data3 = cmd3.ExecuteScalar().ToString();
        return data3;
        cmd3.Dispose();
        conn3.Close();

    }

    [WebMethod(Description = "counting Organizations")]
    public string CountOrganizations(string zip)
    {
        SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn4.Open();
        SqlCommand cmd4 = new SqlCommand("Select  count(*) from OrganizationRegister where ZIP='" + zip + "'", conn4);
        //  SqlDataReader data2 = null;
        string data4 = cmd4.ExecuteScalar().ToString();
        return data4;
        cmd4.Dispose();
        conn4.Close();

    }
    [WebMethod(Description = "DonorRegistration")]
    public string DonorRegister(string fname, string lname, string emailid, string address, string city, string state, string country, string zip, string pswd)
    {

        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn1.Open();
        SqlCommand cmd = new SqlCommand("Select * from DonorRegister where Emailid='" + emailid + "' ", conn1);
        SqlDataReader data = null;
        data = cmd.ExecuteReader();
        if (data.HasRows)
        {
            data.Dispose();
            cmd.Dispose();
            conn1.Close();
            return "Account Already exists";
        }
        else
        {
            data.Dispose();
            cmd.Dispose();

            SqlCommand cmd1 = new SqlCommand("Insert into DonorRegister(FirstName,LastName,Emailid,Address,City,State,Country,ZIP,Password) values ('" + fname + "','" + lname + "','" + emailid + "','" + address + "','" + city + "','" + state + "','" + country + "','" + zip + "','" + pswd + "')", conn1);

            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            conn1.Close();
            return "Account Registered Successfully";
        }

    }

    [WebMethod(Description = "DonorLogin")]
    public string DonorLogin(string emailid, string pswd)
    {

        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csProject"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "Select Password From  DonorRegister where EmailId ='"+ emailid + "'";

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        //string password = dr["Password"].ToString();

        if (!dr.Read() || dr["Password"].ToString() != pswd)
        {
            dr.Dispose();
            cmd.Dispose();
            con.Close();
            return "Invalid credentials";

        }
        else
        {
            dr.Dispose();
            cmd.Dispose();
            con.Close();
            return "Success";

        }

    }

    [WebMethod(Description = "OrganizationRegistration")]
    public string OrganizationRegister(string name, string description, string Url, string emailid, string address, string city, string state,string country, string zip, string pswd)
    {

        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn1.Open();
        SqlCommand cmd = new SqlCommand("Select * from OrganizationRegister where Emailid='"+ emailid +"' ", conn1);
        SqlDataReader data = null;
        data = cmd.ExecuteReader();
        if (data.HasRows)
        {
            data.Dispose();
            cmd.Dispose();
            conn1.Close();
            return "Account Already exists";
        }
        else
        {
            data.Dispose();
            cmd.Dispose();

            SqlCommand cmd1 = new SqlCommand("Insert into OrganizationRegister(Name,Description,URL,Emailid,Address,City,State,Country,ZIP,Password) values ('"+ name +"','"+ description +"','"+ Url +"','"+ emailid +"','"+ address +"','"+ city +"','"+ state +"','"+ country +"','"+ zip +"','"+ pswd +"')", conn1);

            cmd1.ExecuteNonQuery();
            cmd1.Dispose();
            conn1.Close();
            return "Account Registered Successfully";
        }

    }

    [WebMethod(Description = "OrganizationLogin")]
    public string OrganizationLogin(string emailid, string pswd)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from OrganizationRegister where EmailId='"+ emailid +"' AND Password ='"+ pswd +"'", conn);
        SqlDataReader data = null;
        data = cmd.ExecuteReader();
        if (data.HasRows)
        {
            data.Dispose();
            cmd.Dispose();
            conn.Close(); return "Y";
        }
        else
        {
            data.Dispose();
            cmd.Dispose();
            conn.Close(); return "N";
        }

        //Connection String
      /*  string cs = ConfigurationManager.ConnectionStrings["csProject"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "Select Password From OrganizationRegister where EmailId ='"+ emailid +"'";

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        //string password = dr["Password"].ToString();

        if (!dr.Read() || dr["Password"].ToString() != pswd)
        {
            dr.Dispose();
            cmd.Dispose();
            con.Close();
            return "Invalid credentials";

        }
        else
        {
            dr.Dispose();
            cmd.Dispose();
            con.Close();
            return "Success";

        } */

    }

   [WebMethod(Description = "Storing IP Adddress")]
    public void StoreIpAddress(decimal latitude,decimal longitude)

    {
        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csProject"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "INSERT INTO IPAddress(Latitude,Longitude) VALUES (" + latitude + "," + longitude + ")";

        con.Open();

        cmd.ExecuteNonQuery();



    }

   [WebMethod(Description = "Send Email Notification")]
   public List<String> email()
   {
       SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
       conn4.Open();
       SqlCommand cmd4 = new SqlCommand("Select  Emailid from DonorRegister", conn4);
       cmd4.ExecuteNonQuery();
       SqlDataReader reader;
       List<String> strList = new List<String>();
       reader = cmd4.ExecuteReader();
       if (reader.HasRows)
       {
           while (reader.Read())
           {
               String val = reader.IsDBNull(0) ? "" : reader.GetString(0);
               strList.Add(val);
           }
       }
       cmd4.Dispose();
       return strList;
   }

   

   [WebMethod(Description = "Join Volunteer")]
   public string JoinVolunteer(string name,string mobilenum,string emailid,string city,string zip,string eventname)
   {

       SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
       conn1.Open();
       SqlCommand cmd = new SqlCommand("Select * from Volunteer where MobileNumber='"+ mobilenum +"'", conn1);
       SqlDataReader data = null;
       data = cmd.ExecuteReader();
       if (data.HasRows)
       {
           data.Dispose();
           cmd.Dispose();
           conn1.Close();
           return "Already Joined as a Volunteer";
       }
       else
       {
           data.Dispose();
           cmd.Dispose();

           SqlCommand cmd1 = new SqlCommand("Insert into Volunteer(Name,MobileNumber,EmailId,City,ZIP,EventName) values ('"+ name +"','"+ mobilenum +"','"+ emailid +"','"+ city +"','"+ zip +"','"+ eventname +"')", conn1);

           cmd1.ExecuteNonQuery();
           cmd1.Dispose();
           conn1.Close();
           return "Successfully Joined As Volunteer";
       }

   }

   [WebMethod(Description = "Send Email Notification to Volunteers")]
   public List<String> SendEmail(string eventname)
   {
       SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);
       conn4.Open();
       SqlCommand cmd4 = new SqlCommand("Select Emailid from Volunteer WHERE EventName='"+ eventname +"'", conn4);
       cmd4.ExecuteNonQuery();
       SqlDataReader reader;
       List<String> strList = new List<String>();
       reader = cmd4.ExecuteReader();
       if (reader.HasRows)
       {
           while (reader.Read())
           {
               String val = reader.IsDBNull(0) ? "" : reader.GetString(0);
               strList.Add(val);
           }
       }
       cmd4.Dispose();
       return strList;
   }

}
    
   