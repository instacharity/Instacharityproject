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

public partial class additem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String fn;
        String path;
        string name = TextBox1.Text;
        string Description = TextArea1.Value;
        string Location = TextBox3.Text;
        DateTime uploaddt ;
        uploaddt = DateTime.Now.Date;
        DateTime enddt ;
        enddt = Calendar1.SelectedDate;

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["csProject"].ConnectionString);

        //Open the connection

       
            if (FileUpload1.HasFile)
            {
                byte[] imageB = new byte[FileUpload1.PostedFile.ContentLength];
                fn = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(Server.MapPath("images") + "/" + fn);
                string dbpath = "http://localhost:59372/Locator/images/" + fn;

                conn.Open();

                //Declare the sql command
                SqlCommand cmd = new SqlCommand
                    ("Insert into giveitem(Name,Description,Location,imageid,uploaddt,enddt)values('" + name + "','" + Description + "','" + Location + "','" + dbpath + "','" + uploaddt+"','"+enddt+"')", conn);

                //Execute the insert query
                int x = cmd.ExecuteNonQuery();
                cmd.Dispose();
                //close the connection
                conn.Close();
                if (x != 0)
                {
                    Label1.Text = "Successfully Inserted";
                    //Label2.Text = Convert.ToString((enddt-uploaddt).TotalMinutes);
                    //Double TotMin = (enddt-uploaddt).TotalMinutes;
                    //Double a = TotMin / 1440;
                    //Label3.Text = Convert.ToString(a);
                }
                else
                {
                    Label1.Text = "error";
                    
                   
                }
            }
        }





    
}
