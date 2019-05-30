using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class acil_durum_paylas : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        string kod;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
        protected void btn_giris_Click(object sender, EventArgs e)
        {
            dogrulama_kodu();
            string paylas = Convert.ToString(Session["id"]) + "-" + kod;
            if (IsValidEmailAddress(t1.Text.ToString()))
            {
                MailMessage mm = new MailMessage();
                SmtpClient ss = new SmtpClient();
                ss.Credentials = new System.Net.NetworkCredential("burakgulec-@hotmail.com", "Asdf1234567");
                ss.Port = 587;
                ss.Host = "smtp.live.com";
                ss.EnableSsl = true;
                mm.To.Add(t1.Text.ToString());
                mm.From = new MailAddress("burakgulec-@hotmail.com");
                mm.Subject = "Acil Durum Kodu";
                mm.Body = paylas;
                ss.Send(mm);

                baglan.Open();
                SqlCommand komut = new SqlCommand("insert into paylas (id,kod) values('" + Session["id"] + "','" + paylas + "') ", baglan);
                komut.ExecuteNonQuery();
                baglan.Close();
                Label1.Text = "Acil Durum Profiliniz ilgili kişi ile paylaşılmıştır";




            }
            else
            {
                Label1.Text = "Girdiğiniz Mail Adresi Geçersizdir";

            }




        }
        public void dogrulama_kodu()
        {
            kod = "";
            int harf, bykharf, hangisi;
            Random Rharf = new Random();
            Random Rsayi = new Random();
            Random Rbykharf = new Random();
            Random Rhangisi = new Random();


            for (int b = 0; b < 8; b++)
            {
                int a = 0;
                hangisi = Rhangisi.Next(1, 3);
                if (hangisi == 1)
                {
                    kod += Rsayi.Next(0, 10).ToString();
                }
                if (hangisi == 2)
                {
                    harf = Rharf.Next(1, 27);
                    for (char i = 'a'; i <= 'z'; i++)
                    {
                        a++;
                        if (a == harf)
                        {
                            bykharf = Rbykharf.Next(1, 3);
                            if (bykharf == 1)
                            {
                                kod += i;
                            }
                            if (bykharf == 2)
                            {
                                kod += i.ToString().ToUpper();
                            }
                        }
                    }
                }

            }
            // Label1.Text = kod;
        }
        public bool IsValidEmailAddress(string email)
        {
            try
            {
                var emailChecked = new System.Net.Mail.MailAddress(email);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}