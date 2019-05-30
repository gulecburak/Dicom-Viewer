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
    public partial class seker_ekle : System.Web.UI.Page
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
                SqlCommand komut = new SqlCommand("insert into seker (id,sugar,durum) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + RadioButtonList1.SelectedItem.Text + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("seker.aspx");
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
                SqlCommand komut = new SqlCommand("insert into seker (id,sugar,durum) values('" + Session["id"] + "','" + t1.Text.ToString() + "','" + RadioButtonList1.SelectedItem.Text + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Response.Redirect("seker_ekle.aspx");
            }
            else
            {
                Label3.Text = "Text olarak yalnız rakam giriniz";
            }
        }
    }
}