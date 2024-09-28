using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace diziYorumSitesi
{
    public partial class cikisYap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Oturumdaki tüm verileri temizler
            Session.Clear();

            // Kullanıcıyı oturumdan çıkarır
            Session.Abandon();

            // Kullanıcıyı login sayfasına yönlendirir
            Response.Redirect("Default.aspx");
        }
    }
}