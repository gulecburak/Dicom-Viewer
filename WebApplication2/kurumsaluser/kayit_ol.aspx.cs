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
    public partial class kayit_ol : System.Web.UI.Page
    {
        
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           


            pnl_ddogru.Visible = false;
            pnl_dyanlis.Visible = false;

            if (Page.IsPostBack == false)
            {
                MultiView1.ActiveViewIndex = 0;
            }
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
       


        protected void b1_Click(object sender, EventArgs e)
        {

            int x = 0;
            baglan.Open();
            SqlCommand cmd = new SqlCommand("Select * from profil where eposta ='" + t1.Text.ToString() + "'  ", baglan);
            SqlDataReader oku = cmd.ExecuteReader();
            while (oku.Read())
            {
                x++;

            }
            baglan.Close();
            if (IsValidEmailAddress(t1.Text.ToString()))
            {
                if (x == 0)
                {
                    Session["sifre"] = MD5eDonustur(txt_sifre.Text.ToString());
                    MultiView1.ActiveViewIndex = 1;
                    
                }
                else
                {
                    Label1.Text = " e-posta  mevcut, lütfen değişikliklerinizi yaparak giriş yapınız";

                }
            }
            else
            {
                Label1.Text = "e -mail 'inizi kontrol ediniz";

            }


        }

        protected void b2_Click(object sender, EventArgs e)
        {
            string a = DropDownList1.SelectedItem.Text;
            string b = DropDownList2.SelectedItem.Text;
            string c = TextBox3.Text;
            string d = a + "-" + b + "-" + c;
            
            baglan.Open();
            SqlCommand komut = new SqlCommand("insert into profil (ad,soyad,dogum,cinsiyet,eposta,sifre) values('" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + d + "','" + RadioButtonList1.SelectedItem.Text + "','" + t1.Text.ToString() + "','"+ Session["sifre"] +"') ", baglan);
            komut.ExecuteNonQuery();
            baglan.Close();
            Response.Redirect("index.aspx");
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
    }
}