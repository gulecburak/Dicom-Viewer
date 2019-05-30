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
    public partial class alerji : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Regex h = new Regex(@"^[a-zA-Z]*$");

            if (h.IsMatch(t1.Text))
            {
                baglan.Open();
                SqlCommand komut = new SqlCommand("insert into alerji (id,ad,tepki,tur,tarih) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + DropDownList1.SelectedItem.Value + "','" + RadioButtonList1.SelectedItem.Text + "','" + Calendar1.SelectedDate + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("acil_durum.aspx");
            }
            else
            {
                Label3.Text = "Text olarak yalnız harf giriniz";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Regex h = new Regex(@"^[a-zA-Z]*$");

            if (h.IsMatch(t1.Text))
            {
                baglan.Open();
                SqlCommand komut = new SqlCommand("insert into alerji (id,ad,tepki,tur,tarih) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + DropDownList1.SelectedItem.Value + "','" + RadioButtonList1.SelectedItem.Text + "','" + Calendar1.SelectedDate + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("alerji.aspx");
            }
            else
            {
                Label3.Text = "Text olarak yalnız harf giriniz";
            }
        }
    }
}