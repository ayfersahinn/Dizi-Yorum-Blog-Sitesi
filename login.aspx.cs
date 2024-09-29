
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;

namespace diziYorumSitesi
{
    public partial class login : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnGiris(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_KULLANICILAR where x.EMAIL == txtEmail.Text && x.SIFRE == txtSifre.Text select x;
            var sorgu2 = from x in db.TBL_KULLANICILAR where x.EMAIL == txtEmail.Text && x.ADMINMI==true select x;
            if (sorgu.Any())
            {
                if (sorgu2.Any())
                {
                    Session.Add("ADMIN", txtEmail.Text);
                    // Label1.Text = "Session değeri: " + Session["ADMIN"]?.ToString();
                    Response.Redirect("admin/istatistik.aspx");
                }
                else
                {
                    Session.Add("KULLANICI", txtEmail.Text);
                    Response.Redirect("Default.aspx");

                }

            }
            else
            {
                Label1.Text = "Email veya şifre yanlış.";
            }
        }
    }
}