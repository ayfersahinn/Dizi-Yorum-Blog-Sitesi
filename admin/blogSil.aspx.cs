using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class blogSil : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            int x = Convert.ToInt32(Request.QueryString["BLOGID"]);
            var blog = db.TBL_BLOG.Find(x);
            db.TBL_BLOG.Remove(blog);
            db.SaveChanges();
            Response.Redirect("bloglar.aspx");
        }
    }
}