using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Ionic.Zip;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class Default : System.Web.UI.Page
    {
        public List<string> FileList = new List<string>();
        public string SelectedFile;
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
            FileList = GetDicomsByUser(FileList);

            if (!string.IsNullOrEmpty(Request.QueryString["filename"]))
            {
                SelectedFile = "/Uploads/" + Request.QueryString["filename"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Server.MapPath("/Uploads/" + FileUpload1.FileName);
                FileUpload1.SaveAs(filename);
                if (FileUpload1.HasFile)
                {
                    using (var zip = ZipFile.Read(filename))
                    {
                        foreach (ZipEntry zEntry in zip)
                        {
                            string newfilename = Guid.NewGuid().ToString() + ".dcm";

                            FileStream fStream = new FileStream(Server.MapPath("/Uploads/" + newfilename), FileMode.OpenOrCreate, FileAccess.Write);
                            zEntry.Extract(fStream);
                            fStream.Flush();
                            fStream.Close();

                            AddDicomByUser(newfilename);
                        }
                    }
                    File.Delete(filename);
                    Response.Redirect("/");
                }
            }
        }
        private void AddDicomByUser(string filename)
        {
            baglan.Open();
            SqlCommand cmd = new SqlCommand(string.Format("INSERT INTO dicoms(profilId, filename) VALUES('{0}', '{1}')", Session["id"], filename), baglan);
            cmd.ExecuteNonQuery();
            baglan.Close();
        }
        private List<string> GetDicomsByUser(List<string> fileList)
        {
            baglan.Open();
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM dicoms WHERE profilId = " + Session["id"], baglan);
            adapter.Fill(table);

            foreach(DataRow i in table.Rows)
            {
                fileList.Add(i["filename"].ToString());
            }
            baglan.Close();
            return fileList;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/kurumsaluser/giris.aspx");
        }
    }
 }