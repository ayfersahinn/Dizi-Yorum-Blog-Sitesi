using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class blogEkle : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            if (!IsPostBack)
            {
                var turler = (from x in db.TBL_TUR select new { x.TURAD, x.TURID }).ToList();
                txtTur.DataSource = turler;
                txtTur.DataBind();

                var kategoriler = (from x in db.TBL_KATEGORI select new { x.KATID, x.KATAD }).ToList();
                txtKategori.DataSource = kategoriler;
                txtKategori.DataBind();
            }
            
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            TBL_BLOG tb = new TBL_BLOG();
            tb.BLOGBASLIK = txtBaslik.Text;
            tb.BLOGGORSEL = txtGorsel.Text;
            tb.BLOGICERIK = txtIcerik.Text;
            tb.BLOGTUR = byte.Parse(txtTur.SelectedValue);
            tb.BLOGKATEGORI = byte.Parse(txtKategori.SelectedValue);
            tb.BLOGTARIH = DateTime.Parse(txtTarih.Text);
            db.TBL_BLOG.Add(tb);
            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}