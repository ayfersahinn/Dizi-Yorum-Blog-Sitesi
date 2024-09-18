<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="bloglar.aspx.cs" Inherits="diziYorumSitesi.admin.bloglar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>TARİH</th>
            <th>TÜR</th>
            <th>KATEGORİ</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("BLOGID")  %></td>
                    <td><%# Eval("BLOGBASLIK")  %></td>
                    <td><%# Eval("BLOGTARIH")  %></td>
                    <td><%# Eval("BLOGTUR")  %></td>
                    <td><%# Eval("BLOGKATEGORI")  %></td>
                    <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "blogSil.aspx?BLOGID=" + Eval("BLOGID")%> ' runat="server" class="btn btn-danger">Sil</asp:HyperLink></td>
                    
                    <td><asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "blogGuncelle.aspx?BLOGID=" + Eval("BLOGID")%> ' runat="server" class="btn btn-warning">Güncelle</asp:HyperLink></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="blogEkle.aspx" class="btn btn-primary">Yeni Blog Ekle</a>
</asp:Content>
