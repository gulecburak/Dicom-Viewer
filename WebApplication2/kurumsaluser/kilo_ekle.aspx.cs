using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication2.kurumsaluser
{
    public partial class kilo_ekle : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Regex r = new Regex(@"^[0-9]*$");

            if (r.IsMatch(t1.Text))
            {

                baglan.Open();
                SqlCommand komut = new SqlCommand("insert into kilo (id,kg) values('" + Session["id"] + "','" + t1.Text.ToString() + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("kilo.aspx");
            }
            else {
                Label3.Text = "Text olarak yalnız rakam giriniz";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Regex r = new Regex(@"^[0-9]*$");

            if (r.IsMatch(t1.Text))
            {
                baglan.Open();
                SqlCommand komut = new SqlCommand("insert into kilo (id,kg) values('" + Session["id"] + "','" + t1.Text.ToString() + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("kilo_ekle.aspx");
            }
            else {
                Label3.Text = "Text olarak yalnız rakam giriniz";
            }
        }
    }
}