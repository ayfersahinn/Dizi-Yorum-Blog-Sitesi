using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class yorumSil : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int yorumId = Convert.ToInt32(Request.QueryString["YORUMID"]);
            var yorum = db.TBL_YORUMLAR.Find(yorumId);
            db.TBL_YORUMLAR.Remove(yorum);
            db.SaveChanges();
            Response.Redirect("yorumlar.aspx");
        }
    }
}