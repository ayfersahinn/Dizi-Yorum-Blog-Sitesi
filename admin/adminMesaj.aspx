<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="adminMesaj.aspx.cs" Inherits="diziYorumSitesi.admin.adminMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="table table-bordered">
    <tr>
        <th>ID</th>
        <th>AD SOYAD</th>
        <th>EMAIL</th>
        <th>TELEFON</th>
        <th>KONU</th>
        <th>MESAJ</th>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr>
                <td><%# Eval("MESAJID")  %></td>
                <td ><%# Eval("ADSOYAD")  %></td>
                <td ><%# Eval("MAIL")  %></td>
                <td ><%# Eval("TELEFON")  %></td>
                <td ><%# Eval("KONU")  %></td>
                <td style=" word-break:break-word;"><%# Eval("MESAJ")  %></td>
               
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table>
</asp:Content>
