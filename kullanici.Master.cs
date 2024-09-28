using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace diziYorumSitesi
{
    public partial class kullanici : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["KULLANICI"] != null) // Kullanıcı giriş yapmışsa
                {
                    loggedIn.Visible = true; // "Profilim" ve "Çıkış Yap" linklerini göster
                    normal.Visible = false; // "Giriş Yap" linkini gizle
                }
                else
                {
                    loggedIn.Visible = false; // "Profilim" ve "Çıkış Yap" linklerini gizle
                    normal.Visible = true;  // "Giriş Yap" linkini göster
                }
            }
            
        }
    }
}