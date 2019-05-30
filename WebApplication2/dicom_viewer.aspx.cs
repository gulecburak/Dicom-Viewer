using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Ionic.Zip;

namespace WebApplication2
{
    public partial class dicom_viewer : System.Web.UI.Page
    {
        public List<string> FileList = new List<string>();
        public string SelectedFile;

        protected void Page_Load(object sender, EventArgs e)
        {
            FileList = Directory.GetFiles(Server.MapPath("/Uploads")).ToList();

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
                        zip.ExtractAll(Server.MapPath("/Uploads/"));
                    }
                    File.Delete(filename);
                    Response.Redirect("/");
                }
            }
        }
    }
}