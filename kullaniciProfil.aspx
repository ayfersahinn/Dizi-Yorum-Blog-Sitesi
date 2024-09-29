<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="kullaniciProfil.aspx.cs" Inherits="diziYorumSitesi.kullaniciProfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
     <form runat="server">
         <h4 class="my-4 " style="color: #4a5054;">Profil Bilgileri</h4>
         <h6 class="text-secondary mb-2">Kullanıcı Adı Değiştir</h6>
         <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
         <br />
         <h6 class="text-secondary mb-2">E-mail Değiştir</h6>

         <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-mail Adresi"></asp:TextBox>
         <br />
         <h6 class="text-secondary mb-2">Şifre Değiştir</h6>

         <asp:TextBox ID="txtEski" runat="server" CssClass="form-control" placeholder="Eski Şifre"></asp:TextBox>
         <br />

         <asp:TextBox ID="txtYeni" runat="server" CssClass="form-control" placeholder="Yeni Şifre"></asp:TextBox>

         <br />
         
         <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click"  />
         <br /><br />
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
         <br /><br />
     </form>
 </div>
</asp:Content>
