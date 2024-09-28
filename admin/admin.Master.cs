using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace diziYorumSitesi.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ADMIN"] != null) // ADMİN giriş yapmışsa
            {
                loggedIn.Visible = true; // "Profilim" ve "Çıkış Yap" linklerini göster
                
            }
            else
            {
                loggedIn.Visible = false; // "Profilim" ve "Çıkış Yap" linklerini gizle
               
            }
        }
    }
}