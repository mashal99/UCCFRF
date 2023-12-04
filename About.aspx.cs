using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UCCFRFWebApp
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string conString = "Server=tcp:records-server.database.windows.net,1433;Initial Catalog=General_Database;Persist Security Info=False;User ID=christino_;Password=Jerrysiceparty77;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

        protected void Upload2(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);

            string path = Server.MapPath("images/");

            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                if (FileUpload1.HasFile)
                {
                    string ext = Path.GetExtension(FileUpload1.FileName);
                    if (ext == ".pdf" || ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                    {
                        FileUpload1.SaveAs(path + FileUpload1.FileName);
                        string name = "images/" + FileUpload1.FileName;
                        //string q = "insert into Person(FirstName,LastName,PhoneNumber,EmailAddress,FileContent) values('" + firstNameTb.Text.ToString() + "','" + lastNameTb.Text.ToString() + "','" + phoneNumberTb.Text.ToString() + "','" + emailTb.Text.ToString() + "','" + name + "')";
                        //SqlCommand cmd = new SqlCommand(q, con);
                        //cmd.ExecuteNonQuery();
                        //UploadStatusLabel.Show("Entry Added to Database!");

                    }
                    else
                    {
                        //UploadStatusLabel.Show("Please select only .pdf .jpg .jpeg .png files");
                    }
                }
                else
                {
                    //UploadStatusLabel.Show("Please select file!");
                }
            }
        }
    }
}