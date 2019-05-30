using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class sifre_hatirla : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Page.IsPostBack == false)
            {
                Multiview1.ActiveViewIndex = 0;
            }

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            int x = 0;

            string c = null;
            string w = null;
            baglan.Open();
            SqlCommand komut = new SqlCommand("Select * from profil where eposta='" + t1.Text.ToString() + "'", baglan);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                x++;
                c = oku["eposta"].ToString();
                w = oku["id"].ToString();



            }
            baglan.Close();
            if (x > 0)
            {
                Session["mail"] = c;
                Session["kid"] = w;

                int[] dizi = new int[6];
                string y = Convert.ToString(Session["mail"]);
                string kod = null;

                Random rs = new Random();

                for (int i = 0; i < 6; i++)
                {
                    dizi[i] = rs.Next(0, 9);

                }


                for (int i = 0; i < 6; i++)
                {
                    kod += dizi[i].ToString();

                }
                //Response.Write(kod);
                Session["kod"] = kod;



                MailMessage mm = new MailMessage();
                SmtpClient ss = new SmtpClient();
                ss.Credentials = new System.Net.NetworkCredential("burakgulec-@hotmail.com", "Asdf1234567");
                ss.Port = 587;
                ss.Host = "smtp.live.com";
                ss.EnableSsl = true;
                mm.To.Add(y);
                mm.From = new MailAddress("burakgulec-@hotmail.com");
                mm.Subject = "Doğrulama Kodu";
                mm.Body = kod;
                ss.Send(mm);
                Multiview1.ActiveViewIndex = 1;

            }
            else
            {
                t1.Text = "";
                Label1.Text = "sisteme kayıtlı mail adresiniz bulunamadı";
            }

        }

        protected void bt2_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["kod"]) == t2.Text)
            {


                Label1.Text = "Girdiğiniz kod Doğrudur Şifrenizi Belirleyiniz";
                Multiview1.ActiveViewIndex = 2;


            }
            else
            {
                Label2.Text = "GİRDİĞİNİZ KOD YANLIŞTIR";

            }


        }

        protected void bt3_Click(object sender, EventArgs e)
        {
            Label3.Text = "Girdiğiniz kod Doğrudur Şifrenizi Belirleyiniz";



            baglan.Open();
            SqlCommand komut = new SqlCommand("update profil set sifre='" + MD5eDonustur(t3.Text) + "' where id=" + Session["kid"], baglan);
            komut.ExecuteNonQuery();
            baglan.Close();

            Multiview1.ActiveViewIndex = 3;


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

        protected void bt4_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}
