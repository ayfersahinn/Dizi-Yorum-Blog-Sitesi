using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;

namespace diziYorumSitesi
{
    public partial class iletisim : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            TBL_ILETISIM t = new TBL_ILETISIM();
            t.ADSOYAD = txtAd.Text;
            t.TELEFON = txtTel.Text;    
            t.MAIL = txtMail.Text;
            t.KONU = txtKonu.Text;
            t.MESAJ = txtMesaj.Text;
            db.TBL_ILETISIM.Add(t);
            db.SaveChanges();
        }
    }
}