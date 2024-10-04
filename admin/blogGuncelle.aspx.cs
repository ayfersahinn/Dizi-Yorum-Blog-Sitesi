using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class blogGuncelle : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            int y = Convert.ToInt32(Request.QueryString["BLOGID"]);

            if (!IsPostBack)
            {
                var turler = (from x in db.TBL_TUR select new { x.TURAD, x.TURID }).ToList();
                txtTur.DataSource = turler;
                txtTur.DataBind();

                var kategoriler = (from x in db.TBL_KATEGORI select new { x.KATID, x.KATAD }).ToList();
                txtKategori.DataSource = kategoriler;
                txtKategori.DataBind();

                var deger = db.TBL_BLOG.Find(y);
                txtBaslik.Text = deger.BLOGBASLIK;
                txtIcerik.Text = deger.BLOGICERIK;
                txtGorsel.Text = deger.BLOGGORSEL;
                txtTarih.Text = deger.BLOGTARIH.ToString();
                txtTur.SelectedValue = deger.BLOGTUR.ToString();
                txtKategori.SelectedValue = deger.BLOGKATEGORI.ToString();
            }
           
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            int y = int.Parse(Request.QueryString["BLOGID"]);
            var blog = db.TBL_BLOG.Find(y);
            blog.BLOGBASLIK = txtBaslik.Text;
            blog.BLOGICERIK = txtIcerik.Text;
            blog.BLOGGORSEL = txtGorsel.Text;
            blog.BLOGTARIH = DateTime.Parse(txtTarih.Text);
            blog.BLOGTUR = byte.Parse(txtTur.SelectedValue);
            blog.BLOGKATEGORI = byte.Parse(txtKategori.SelectedValue);
           
            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}