using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using diziYorumSitesi.entity;
namespace diziYorumSitesi
{
    public partial class kullaniciProfil : System.Web.UI.Page
    {
        diziYorumEntities db = new diziYorumEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string currentUserEmail = Session["KULLANICI"].ToString();
                var user = db.TBL_KULLANICILAR.Where(x => x.EMAIL == currentUserEmail).FirstOrDefault();

                if (currentUserEmail != null)
                {
                    //Label1.Text = "Session değeri: " + Session["ADMIN"].ToString();
                    txtAd.Text = user.KULLANICI;
                    txtMail.Text = user.EMAIL;
                    string userPhoto = string.IsNullOrEmpty(user.FOTO) ? "~/images/profil.png" : user.FOTO;
                    imgProfil.ImageUrl = userPhoto; // <asp:Image> kontrolünde kullanmak için

                }
                else
                {
                    Label1.Text = "Session değeri boş";
                }
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string currentUserEmail = Session["KULLANICI"].ToString();
            //Label1.Text = "Session değeri: " + Session["ADMIN"]?.ToString();

            var user = db.TBL_KULLANICILAR.Where(x => x.EMAIL == currentUserEmail).FirstOrDefault();

            if (user != null)
            {

                user.KULLANICI = txtAd.Text;
                user.EMAIL = txtMail.Text;
                if (!string.IsNullOrEmpty(txtEski.Text) && !string.IsNullOrEmpty(txtYeni.Text))
                {
                    if (user.SIFRE == txtEski.Text)
                    {
                        // Eski şifre doğru ise yeni şifreyi güncelle
                        user.SIFRE = txtYeni.Text;
                    }
                    else
                    {
                        // Eski şifre yanlışsa hata mesajı göster
                        Label1.Text = "Eski şifreniz doğru değildir.";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        return; // İşlemi sonlandır
                    }
                }

                db.SaveChanges();
                Label1.Text = "Bilgileriniz başarıyla güncellendi.";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Kullanıcı bulunamadı";
                Label1.ForeColor = System.Drawing.Color.Red;

            }

        }


        protected void upload_Click(object sender, EventArgs e)
        {
            string currentUserEmail = Session["KULLANICI"].ToString();
            var user = db.TBL_KULLANICILAR.Where(x => x.EMAIL == currentUserEmail).FirstOrDefault();
            if (user != null)
            {
                if (fileUpload.HasFile)
                {

                    // Yüklenen dosyayı al ve sunucuda kaydet
                    string fileName = Path.GetFileName(fileUpload.FileName);
                    string filePath = Server.MapPath("~/Uploads/" + fileName);
                    fileUpload.SaveAs(filePath);
                    user.FOTO = "~/Uploads/" + fileName;
                    db.SaveChanges();
                    Label2.Text = "Dosya başarıyla yüklendi!";
                    Label2.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect(Request.RawUrl);


                }
                else
                {
                    Label2.Text = "Lütfen bir dosya seçin.";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
            }

        }

        protected void btnSil_Click(object sender, ImageClickEventArgs e)
        {
            string currentUserEmail = Session["KULLANICI"].ToString();
            var user = db.TBL_KULLANICILAR.Where(x => x.EMAIL == currentUserEmail).FirstOrDefault();
            if (user != null)
            {
                user.FOTO = "images/profil.png";

                db.SaveChanges();

                Response.Redirect(Request.RawUrl);

            }
        }
    }
}