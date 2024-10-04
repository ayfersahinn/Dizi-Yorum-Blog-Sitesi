using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;

namespace diziYorumSitesi.admin
{
    public partial class adminMesaj : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            var mesajlar = db.TBL_ILETISIM.ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();
        }
    }
}