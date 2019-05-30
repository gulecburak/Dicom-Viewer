using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.kurumsaluser
{
    public partial class erisim : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=bitirme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            try
            {
                int c = 0;
                string metin = t1.Text;
                int x = metin.IndexOf('-');
                int id_temp = Convert.ToInt32(metin.Substring(0, x));
                baglan.Open();
                SqlCommand komut = new SqlCommand("Select * from paylas where id='" + metin.Substring(0, x) + "'and kod='" + t1.Text.ToString() + "'", baglan);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    c++;




                }
                if (c > 0)

                {
                    Session["ziyaret"] = 10;

                    Response.Redirect("acil_durum_ziyaret.aspx?id_number=" + id_temp);


                }
                else
                {
                    Label1.Text = "Girdiğiniz Kodu Kontrol Ediniz";


                }


                baglan.Close();

            }
            catch
            {
                Label1.Text = "Girdiğiniz Kodu Kontrol Ediniz";
            }



        }
    }
}