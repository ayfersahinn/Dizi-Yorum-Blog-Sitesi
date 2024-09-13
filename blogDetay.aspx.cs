using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;

namespace diziYorumSitesi
{
    
    public partial class blogDetay : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.TBL_BLOG.Where(x => x.BLOGID == id).ToList();
            Repeater1.DataSource = blog;
            Repeater1.DataBind();

            var yorumlar = db.TBL_YORUMLAR.Where(x=> x.YORUMBLOG == id).ToList();
            Repeater2.DataSource = yorumlar;
            Repeater2.DataBind();
        }

        protected void btnYorum_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            TBL_YORUMLAR y = new TBL_YORUMLAR();
            y.KULLANICIADI = txtAd.Text;
            y.MAIL = txtMail.Text;
            y.YORUMICERIK = txtMesaj.Text;
            y.YORUMBLOG = id;
            db.TBL_YORUMLAR.Add(y);
            db.SaveChanges();
            Response.Redirect("blogDetay.aspx?BLOGID="+ id);
        }
    }
}