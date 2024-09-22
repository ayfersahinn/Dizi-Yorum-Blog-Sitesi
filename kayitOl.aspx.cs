using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi
{
    public partial class kayitOl : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_KULLANICILAR t = new TBL_KULLANICILAR();
            t.KULLANICI = txtAd.Text;
            t.EMAIL = txtEmail.Text;
            t.SIFRE = txtSifre.Text;
            db.TBL_KULLANICILAR.Add(t);
            db.SaveChanges();
            Label1.Text = "Kaydınız gerçekleşti.";
            txtAd.Text = "";
            txtEmail.Text = "";
        }
    }
}