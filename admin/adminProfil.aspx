<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminProfil.aspx.cs" Inherits="diziYorumSitesi.admin.adminProfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center">
        <form runat="server">
            <h4 class=" mb-4" style="color: #4a5054;">Profil Bilgileri</h4>
            <h6 class="text-secondary">Kullanıcı Adı Değiştir</h6>
            <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" Width="350"></asp:TextBox>
            <br />
            <h6 class="text-secondary">E-mail Değiştir</h6>

            <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-mail Adresi"></asp:TextBox>
            <br />
            <h6 class="text-secondary">Şifre Değiştir</h6>

            <asp:TextBox ID="txtEski" runat="server" CssClass="form-control" placeholder="Eski Şifre"></asp:TextBox>
            <br />

            <asp:TextBox ID="txtYeni" runat="server" CssClass="form-control" placeholder="Yeni Şifre"></asp:TextBox>

            <br />
             <div class="d-flex justify-content-center">
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click" Width="150" />
                  </div>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </form>
    </div>
</asp:Content>
