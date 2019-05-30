using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class acil_durum_ziyaret : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           

            string id_temp = Request.QueryString["id_number"];

            if (Session["ziyaret"] == null)
            {
                Response.Redirect("WebForm2.aspx");
            }

            //Response.Write(id_temp);
            baglan.Open();

            SqlDataAdapter adp1 = new SqlDataAdapter("select * from alerji where id=" + id_temp, baglan);
            DataTable dtbl1 = new DataTable();
            adp1.Fill(dtbl1);
            my1.DataSource = dtbl1;
            my1.DataBind();
            baglan.Close();
            baglan.Open();

            SqlDataAdapter adp2 = new SqlDataAdapter("select * from hastalik where id=" + id_temp, baglan);
            DataTable dtbl2 = new DataTable();
            adp2.Fill(dtbl2);
            my2.DataSource = dtbl2;
            my2.DataBind();
            baglan.Close();
            baglan.Open();

            SqlDataAdapter adp3 = new SqlDataAdapter("select * from ilac where id=" + id_temp, baglan);
            DataTable dtbl3 = new DataTable();
            adp3.Fill(dtbl3);
            my3.DataSource = dtbl3;
            my3.DataBind();
            baglan.Close();

        }
    }
}