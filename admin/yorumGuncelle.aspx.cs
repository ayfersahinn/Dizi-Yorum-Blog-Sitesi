using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class yorumGuncelle : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
                var yorum = db.TBL_YORUMLAR.Find(id);
                txtBaslik.Text = yorum.TBL_BLOG.BLOGBASLIK;
                txtID.Text = yorum.YORUMID.ToString();
                txtKullanici.Text = yorum.KULLANICIADI;
                txtYorum.Text = yorum.YORUMICERIK;
            }
           

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.TBL_YORUMLAR.Find(id);
            yorum.YORUMICERIK = txtYorum.Text;
            db.SaveChanges();
            Response.Redirect("yorumlar.aspx");
        }
    }
}