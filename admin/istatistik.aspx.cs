using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi.admin
{
    public partial class istatistik: System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = db.TBL_BLOG.Count().ToString();
            Label2.Text = db.TBL_YORUMLAR.Count().ToString();
            Label3.Text = db.TBL_BLOG.Where(x=> x.BLOGTUR==2).Count().ToString();
            Label4.Text = db.TBL_BLOG.Where(x=> x.BLOGTUR==1).Count().ToString();
            Label5.Text = db.TBL_BLOG.Where(x=> x.BLOGTUR==3).Count().ToString();   
            Label6.Text = db.TBL_BLOG.Where(x=> x.TBL_TUR.TURAD=="Animasyon").Count().ToString();
            Label7.Text = db.TBL_BLOG.Where(z=> z.BLOGID==( db.TBL_YORUMLAR.GroupBy(x=> x.YORUMBLOG).OrderByDescending(x=> x.Count()).Select(x=>x.Key).FirstOrDefault())).Select(k=> k.BLOGBASLIK).FirstOrDefault();
        }
    }
}