using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;

public partial class UploadImages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile != null)
        {

            string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //string Description = txtDescription.Text;


            if (string.IsNullOrEmpty(FileName) == false)

            //Save files to disk
            {

                FileUpload1.SaveAs(Server.MapPath("UploadImages/" + FileName));



                //Add Entry to DataBase

                String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["csProject"].ConnectionString;

                SqlConnection con = new SqlConnection(strConnString);

                string strQuery = "insert into Image (FileName, FilePath)" + " values(@FileName, @FilePath)";

                SqlCommand cmd = new SqlCommand(strQuery);

                cmd.Parameters.AddWithValue("@FileName", FileName);

                //cmd.Parameters.AddWithValue("@Description", Description);

                cmd.Parameters.AddWithValue("@FilePath", "UploadImages/" + FileName);

                cmd.CommandType = System.Data.CommandType.Text;

                cmd.Connection = con;

                try
                {

                    con.Open();

                    cmd.ExecuteNonQuery();
                    
                    lblResult.Text = "File Uploaded Successfully";

                    //txtDescription.Text = "";

                }

                catch (Exception ex)
                {

                    Response.Write(ex.Message);

                }

                finally
                {

                    con.Close();

                    con.Dispose();

                }

            }
            else
            {
                lblResult.Text = "Please Upload an Image";
            }
        }
    }
}