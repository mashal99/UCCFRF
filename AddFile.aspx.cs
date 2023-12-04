using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.IO;

namespace WebAppGeneral
{
    public partial class AddFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string conString = "Server=tcp:records-server.database.windows.net,1433;Initial Catalog=General_Database;Persist Security Info=False;User ID=christino_;Password=Jerrysiceparty77;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        protected void Upload_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);

            string path = Server.MapPath("images/");

            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                if (FileUpload1.HasFile)
                {
                    string ext = Path.GetExtension(FileUp.FileName);
                    if (ext == ".pdf" || ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                    {
                        FileUp.SaveAs(path + FileUp.FileName);
                        string name = "images/" + FileUp.FileName;
                        //string q = "insert into Person(FirstName,LastName,PhoneNumber,EmailAddress,FileContent) values('" + firstNameTb.Text.ToString() + "','" + lastNameTb.Text.ToString() + "','" + phoneNumberTb.Text.ToString() + "','" + emailTb.Text.ToString() + "','" + name + "')";
                        //SqlCommand cmd = new SqlCommand(q, con);
                        //cmd.ExecuteNonQuery();
                        //MessageBox.Show("Entry Added to Database!");

                    }
                    else
                    {
                        //MessageBox.Show("Please select only .pdf .jpg .jpeg .png files");
                    }
                }
                else
                {
                    //MessageBox.Show("Please select file!");
                }

            }
        }
    }
}