using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;

namespace diziYorumSitesi.admin
{
    public partial class bloglar : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            
            var blogs = (from x in db.TBL_BLOG select new {x.BLOGID, x.BLOGBASLIK, x.BLOGTARIH, x.TBL_TUR.TURAD, x.TBL_KATEGORI.KATAD}).ToList();
            Repeater1.DataSource = blogs;
            Repeater1.DataBind();
        }
    }
}