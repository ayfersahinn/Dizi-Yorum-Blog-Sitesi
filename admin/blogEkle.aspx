<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="blogEkle.aspx.cs" Inherits="diziYorumSitesi.admin.blogEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Blog Başlık"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtIcerik" runat="server" CssClass="form-control" placeholder="Blog İçerik" Height="100" TextMode="MultiLine"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtTarih" runat="server" CssClass="form-control" placeholder="Blog Tarih" ></asp:TextBox>
        <br />
        <asp:TextBox ID="txtGorsel" runat="server" CssClass="form-control" placeholder="Blog Görsel"></asp:TextBox>
        <br />
        <asp:DropDownList ID="txtTur" runat="server" CssClass="form-control" DataValueField="TURID" DataTextField="TURAD"></asp:DropDownList>
      
        <br />
        <asp:DropDownList ID="txtKategori" CssClass="form-control" runat="server" DataValueField="KATID" DataTextField="KATAD"></asp:DropDownList>
        
        <br />
        <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="btnKaydet_Click" />
    </form>
</asp:Content>
