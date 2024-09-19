using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi
{
    public partial class blogLink : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var bloglar = db.TBL_BLOG.Where(x => x.BLOGID == id).ToList();
            Repeater1.DataSource = bloglar;
            Repeater1.DataBind();

            var bloglar2 = db.TBL_KATEGORI.ToList();
            Repeater2.DataSource = bloglar2;
            Repeater2.DataBind();

            var bloglar3 = db.TBL_BLOG.Take(5).ToList();
            Repeater3.DataSource = bloglar3;
            Repeater3.DataBind();
            var yorumlar = db.TBL_YORUMLAR.Take(3).OrderByDescending(x => x.YORUMID).ToList();
            Repeater4.DataSource = yorumlar;
            Repeater4.DataBind();
        }
    }
}