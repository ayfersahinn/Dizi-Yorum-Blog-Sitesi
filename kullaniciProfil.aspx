<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kullaniciProfil.aspx.cs" Inherits="diziYorumSitesi.kullaniciProfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .avatar-container {
            position: relative;
            display: inline-block;
        }

        .avatar {
            display: block;
            /*border-radius: 50%;*/ /* İsteğe bağlı, avatarı yuvarlak yapar */
        }

        .edit-icon {
            position: absolute;
            bottom: 0; /* Sağ alt köşeye hizalar */
            right: 0; /* Sağ alt köşeye hizalar */
            transform: translate(50%, 50%); /* İkonu tam sağ alta taşır */
            cursor: pointer; /* Tıklanabilir imleç işareti */
        }
    </style>
    <div class="container d-flex justify-content-center align-items-center">
        <form runat="server">
            <h4 class="my-4 " style="color: #4a5054; text-align: center">Profil Bilgileri</h4>


            <div class=" avatar-container position-relative d-flex justify-content-center ">
                <asp:Image ID="imgProfil" runat="server" ImageUrl="images/profil.png" Width="200" CssClass="avatar" />
                <%--<img src="images/profil.png" width="200" class="avatar">--%>
                <span class="edit-icon">
                    <asp:ImageButton ID="btnResim" runat="server" Width="35" ImageUrl="images/pen.png" OnClientClick="triggerFileUpload(); return false;" /> &nbsp
                    <asp:ImageButton ID="btnSil" runat="server" Width="32" ImageUrl="images/delete.png" OnClick="btnSil_Click" />

                </span>
                
                <%--<span class="edit-icon"><img src="images/pen.png"/ width="35"></span>--%>
            </div>
            <br />
            <asp:FileUpload ID="fileUpload" runat="server" Style="display: none;" />
            <div class="d-flex justify-content-center">
                <asp:Button ID="upload" runat="server" Text="Fotoğraf Yükle" Width="150" CssClass="btn btn-warning" OnClick="upload_Click" />

            </div>
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <h6 class="text-secondary mb-2">Kullanıcı Adı Değiştir</h6>
            <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" Width="350"></asp:TextBox>
            <br />
            <h6 class="text-secondary mb-2">E-mail Değiştir</h6>

            <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-mail Adresi"></asp:TextBox>
            <br />
            <h6 class="text-secondary mb-2">Şifre Değiştir</h6>

            <asp:TextBox ID="txtEski" runat="server" CssClass="form-control" placeholder="Eski Şifre"></asp:TextBox>
            <br />

            <asp:TextBox ID="txtYeni" runat="server" CssClass="form-control" placeholder="Yeni Şifre"></asp:TextBox>

            <br />
            <div class="d-flex justify-content-center">
                <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success " OnClick="btnKaydet_Click" Width="150" />
            </div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </form>
    </div>
    <script type="text/javascript">
        function triggerFileUpload() {
            document.getElementById('<%= fileUpload.ClientID %>').click();
        }
    </script>

</asp:Content>
