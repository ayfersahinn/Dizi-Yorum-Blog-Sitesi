using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi
{
    public partial class sifremiUnuttum : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = (from x in db.TBL_KULLANICILAR
                         where x.EMAIL == txtEmail.Text
                         select x).FirstOrDefault();
            if (sorgu != null)
            {
                
                sorgu.SIFRE = txtSifre.Text;
                db.SaveChanges();
                Label1.Text = "Şifreniz değiştirildi";
                Label1.Style["color"] = "green";
                txtEmail.Text = "";
            }
            else
            {
                Label1.Text = "Email hesabı bulunamadı";
            }
        }
    }
}