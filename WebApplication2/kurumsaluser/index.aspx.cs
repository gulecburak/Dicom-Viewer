using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
          
            pnl_ddogru.Visible = false;
            pnl_dyanlis.Visible = false;
        }

        protected void btn_giris_Click(object sender, EventArgs e)
        {
            int c = 0;
            baglan.Open();
            SqlCommand komut = new SqlCommand("Select * from profil where eposta='" + txt_kullanici.Text.ToString() + "'and sifre='" +MD5eDonustur(txt_sifre.Text.ToString())+ "'", baglan);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                c++;
                Session["id"] = oku["id"].ToString();



            }
            if (c > 0)

            {

                Response.Redirect("giris.aspx");


            }
            else
            {
                pnl_dyanlis.Visible = true;


            }


            baglan.Close();

        }
        public static string MD5eDonustur(string metin)
        {
            MD5CryptoServiceProvider pwd = new MD5CryptoServiceProvider();
            return Sifrele(metin, pwd);
        }
        private static string Sifrele(string metin, HashAlgorithm alg)
        {
            byte[] byteDegeri = System.Text.Encoding.UTF8.GetBytes(metin);
            byte[] sifreliByte = alg.ComputeHash(byteDegeri);
            return Convert.ToBase64String(sifreliByte);
        }

        protected void bt3_Click(object sender, EventArgs e)
        {
            Response.Redirect("sifre_hatirla.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit_ol.aspx");
        }
    }
}