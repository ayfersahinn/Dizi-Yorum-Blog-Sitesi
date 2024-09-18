<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumGuncelle.aspx.cs" Inherits="diziYorumSitesi.admin.yorumGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

        <asp:TextBox ID="txtID" runat="server" CssClass="form-control" placeholder="Yorum id" Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtKullanici" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" Enabled="false"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Blog Başlık" Enabled="false" ></asp:TextBox>
        <br />
        <asp:TextBox ID="txtYorum" runat="server" CssClass="form-control" placeholder="Yorum" Height="100" TextMode="MultiLine"></asp:TextBox>
        <br />



        <br />
        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click" />
    </form>
</asp:Content>
