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
    public partial class ilac : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string a = t2.Text + "   " + DropDownList1.SelectedItem.Value;
            string b = t3.Text + "  " + DropDownList2.SelectedItem.Value;
            Regex r = new Regex(@"^[0-9]*$");
            Regex h = new Regex(@"^[a-zA-Z]*$");


            if (h.IsMatch(t1.Text))
            {
                if (r.IsMatch(t2.Text))
                {
                    if (r.IsMatch(t3.Text))
                    {


                        baglan.Open();
                        SqlCommand komut = new SqlCommand("insert into ilac (id,ad,etkinlik,dozaj,alma,zaman) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + a + "','" + b + "','" + DropDownList3.SelectedItem.Value + "','" + t4.Text.ToString() + "') ", baglan);
                        komut.ExecuteNonQuery();
                        baglan.Close();
                        Response.Redirect("acil_durum.aspx");
                    }
                    else
                    {
                        Label3.Text = "Text olarak yalnız rakam giriniz";
                    }
                }
                else
                {
                    Label3.Text = "Text olarak yalnız rakam giriniz";
                }
            }
            else
            {
                Label3.Text = "Text olarak yalnız harf giriniz";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = t2.Text + "   " + DropDownList1.SelectedItem.Value;
            string b = t3.Text + "  " + DropDownList2.SelectedItem.Value;
            Regex r = new Regex(@"^[0-9]*$");
            Regex h = new Regex(@"^[a-zA-Z]*$");


            if (h.IsMatch(t1.Text))
            {
                if (r.IsMatch(t2.Text))
                {
                    if (r.IsMatch(t3.Text))
                    {


                        baglan.Open();
                        SqlCommand komut = new SqlCommand("insert into ilac (id,ad,etkinlik,dozaj,alma,zaman) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + a + "','" + b + "','" + DropDownList3.SelectedItem.Value + "','" + t4.Text.ToString() + "') ", baglan);
                        komut.ExecuteNonQuery();
                        baglan.Close();
                        Response.Redirect("ilac.aspx");
                    }
                    else
                    {
                        Label3.Text = "Text olarak yalnız rakam giriniz";
                    }
                }
                else
                {
                    Label3.Text = "Text olarak yalnız rakam giriniz";
                }
            }
            else
            {
                Label3.Text = "Text olarak yalnız harf giriniz";
            }


        }
    }
}