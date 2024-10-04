using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class yorumlar : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            var yorumlar = (from x in db.TBL_YORUMLAR select new {x.YORUMID, x.KULLANICIADI,x.YORUMICERIK, x.TBL_BLOG.BLOGBASLIK}).ToList();
            Repeater1.DataSource = yorumlar;
            Repeater1.DataBind();
        }
    }
}