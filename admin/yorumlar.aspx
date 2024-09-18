<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumlar.aspx.cs" Inherits="diziYorumSitesi.admin.yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="table table-bordered">
     <tr>
         <th>ID</th>
         <th>KULLANICI</th>
         <th>YORUM</th>
         <th>BLOG</th>
         <th>SİL</th>
         <th>GÜNCELLE</th>
     </tr>
     <asp:Repeater ID="Repeater1" runat="server">
         <ItemTemplate>
             <tr>
                 <td><%# Eval("YORUMID")  %></td>
                 <td><%# Eval("KULLANICIADI")  %></td>
                 <td><%# Eval("YORUMICERIK")  %></td>
                 <td><%# Eval("BLOGBASLIK")  %></td>
                
                 <td><asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "yorumSil.aspx?YORUMID=" + Eval("YORUMID")%> ' runat="server" class="btn btn-danger">Sil</asp:HyperLink></td>
                 
                 <td><asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "yorumGuncelle.aspx?YORUMID=" + Eval("YORUMID")%> ' runat="server" class="btn btn-warning">Güncelle</asp:HyperLink></td>
             </tr>
         </ItemTemplate>
     </asp:Repeater>
 </table>
 
</asp:Content>
