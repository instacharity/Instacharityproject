using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
/// <summary>
/// Summary description for Webservice
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Webservice : System.Web.Services.WebService {

    public Webservice () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string User_Registration(string firstname, string lastname, string emailid, string password, DateTime dob, string gender)
    {

        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csPROJECT"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        con.Open();

        SqlCommand cmd = new SqlCommand("Select EmailId from Registeration where EmailId=emailid", con);


        string result = cmd.ExecuteScalar().ToString();

        int count = string.Compare(result, emailid);

       

        if (count == 0)
        {


            con.Close();

            return "Account already exists";



        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("Insert into Registeration(FirstName,LastName,EmailId,Password,DOB,Gender) Values ('" + firstname + "','" + lastname + "','" + emailid + "','" + password + "','" + dob + "','" + gender + "')", con);

            cmd1.ExecuteNonQuery();

            cmd1.Dispose();

            con.Close();

            return "Success Insert";

        }
    }

    [WebMethod]

    public string User_Login(string emailid, string password)

    {
        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csPROJECT"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "Select Password From Registeration where EmailId ='" + emailid + "'";

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (!dr.Read() || dr["Password"].ToString() != password)
        {
            con.Close();
            return "Invalid credentials";
            
        }
        else
        {
            con.Close();
            return "Login Successful";
            
        }
        
    }

    [WebMethod]
    public string Organization_Registration(string emailid, string name, string address, string password)
    {

        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csPROJECT"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        con.Open();

        SqlCommand cmd = new SqlCommand("Select count(*) from Organization_Registration where EmailId=emailid", con);

        int count = Convert.ToInt32(cmd.ExecuteScalar());

        if (count == emailid.Length)
        {



            con.Close();

            return "Account already exists";

        }
        else
        {


            SqlCommand cmd1 = new SqlCommand("Insert into Organization_Registration(EmailId,Name,Address,Password) Values ('" + emailid + "','" + name + "','" + address + "','" + password + "')", con);

            cmd1.ExecuteNonQuery();

            cmd1.Dispose();

            con.Close();

            return "Success Insert";
        }
    }

    [WebMethod]

    public string Organization_Login(string emailid, string password)
    {
        //Connection String
        string cs = ConfigurationManager.ConnectionStrings["csPROJECT"].ConnectionString;

        //Creating Sqlconnection object and establishing connection

        SqlConnection con = new SqlConnection(cs);

        SqlCommand cmd = new SqlCommand();

        cmd.Connection = con;

        cmd.CommandText = "Select Password From Organization_Registration where EmailId ='" + emailid + "'";

        con.Open();

        SqlDataReader dr = cmd.ExecuteReader();

        if (!dr.Read() || dr["Password"].ToString() != password)
        {
            con.Close();
            return "Invalid credentials";

        }
        else
        {
            con.Close();
            return "Login Successful";

        }

    }

}
