using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class tansiyon_ekle : System.Web.UI.Page
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
                if (r.IsMatch(t2.Text))
                {
                    if (r.IsMatch(t3.Text))
                    {

                        baglan.Open();
                        SqlCommand komut = new SqlCommand("insert into tansiyon (id,sis,diyas,nabiz) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + t2.Text.ToString() + "','" + t3.Text.ToString() + "') ", baglan);
                        komut.ExecuteNonQuery();
                        baglan.Close();
                        Response.Redirect("tansiyon.aspx");
                    }
                    else { Label3.Text = "Text olarak yalnız rakam giriniz"; }
                }
                else { Label3.Text = "Text olarak yalnız rakam giriniz"; }
            }
            else { Label3.Text = "Text olarak yalnız rakam giriniz"; }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Regex r = new Regex(@"^[0-9]*$");

            if (r.IsMatch(t1.Text))
            {
                if (r.IsMatch(t2.Text))
                {
                    if (r.IsMatch(t3.Text))
                    {

                        baglan.Open();
                        SqlCommand komut = new SqlCommand("insert into tansiyon (id,sis,diyas,nabiz) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + t2.Text.ToString() + "','" + t3.Text.ToString() + "') ", baglan);
                        komut.ExecuteNonQuery();
                        baglan.Close();
                        Response.Redirect("tansiyon_ekle.aspx");
                    }
                    else { Label3.Text = "Text olarak yalnız rakam giriniz"; }
                }
                else { Label3.Text = "Text olarak yalnız rakam giriniz"; }
            }
            else { Label3.Text = "Text olarak yalnız rakam giriniz"; }

        }
    }
}