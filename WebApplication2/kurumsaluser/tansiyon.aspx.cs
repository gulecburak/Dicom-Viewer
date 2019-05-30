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
    public partial class tansiyon : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            

            baglan.Open();

            SqlDataAdapter adp = new SqlDataAdapter("select * from tansiyon  where id= '" + Session["id"] + "' order by tarih desc", baglan);
            DataTable dtbl = new DataTable();
            adp.Fill(dtbl);
            my.DataSource = dtbl;
            my.DataBind();
            baglan.Close();

        }
    }
}