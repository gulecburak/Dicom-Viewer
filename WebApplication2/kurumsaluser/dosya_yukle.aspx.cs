using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class dosya_yukle : System.Web.UI.Page
    {
        string conStr = @"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                FillData();


            }
        }
        private void Download(int id)
        {
            DataTable dt = new DataTable();
            using (SqlConnection baglan = new SqlConnection(conStr))
            {



                SqlCommand cmd = new SqlCommand("GetDocument", baglan);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = id;
                baglan.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }

            string name = dt.Rows[0]["name"].ToString();
            byte[] documentBytes = (byte[])dt.Rows[0]["document"];
            Response.ClearContent();
            Response.ContentType = "application/octetstream";
            Response.AddHeader("Content-Disposition", string.Format("attachment;filename={0}", name));
            Response.AddHeader("Content-Length", documentBytes.Length.ToString());
            Response.BinaryWrite(documentBytes);
            Response.Flush();
            Response.Close();



        }
        private void FillData()
        {
            DataTable dt = new DataTable();

            using (SqlConnection baglan = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("GetDocuments", baglan);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                baglan.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                dt.Load(reader);
            }

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileInfo fi = new FileInfo(FileUpload1.FileName);
            byte[] documentContent = FileUpload1.FileBytes;
            string name = fi.Name;
            string extn = fi.Extension;

            using (SqlConnection baglan = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("saveDocument", baglan);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = name;
                cmd.Parameters.Add("@content", SqlDbType.VarBinary).Value = documentContent;
                cmd.Parameters.Add("@Extn", SqlDbType.VarChar).Value = extn;
                baglan.Open();
                cmd.ExecuteNonQuery();
                FillData();
            }




        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton lnk = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)lnk.NamingContainer;
            int id = int.Parse(GridView1.DataKeys[gr.RowIndex].Value.ToString());
            Download(id);


        }
    }
}