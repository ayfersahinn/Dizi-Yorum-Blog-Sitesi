<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="diziYorumSitesi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
.limited-lines {
    display: -webkit-box;
    -webkit-line-clamp: 4; /* Yalnızca 4 satır göster */
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis; /* Fazla metin için "..." ekle */
    line-height: 1.5em; /* Satır yüksekliği */
    max-height: calc(1.5em * 4); /* 4 satırın yüksekliği */
    text-align: justify;
}


    </style>
    <div class="container">
        <div class="content-grids">
            <div class="row">
                <div class="col-md-8 content-main">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="content-grid">
                                <div class="content-grid-info ">
                                    <img src="<%# Eval("BLOGGORSEL")  %>" alt="" width="300" style="display: block; margin-left: auto; margin-right: auto" />
                                    <div class="post-info">
                                        <h4 ><a  href="blogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK")%></a> <%# Eval("BLOGTARIH")  %></h4>
                                        <p class="limited-lines "><%# Eval("BLOGICERIK")  %></p>
                                        <a href="blogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><span></span>Devamını oku</a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="col-md-4 content-right">
                    <div class="recent">
                        <h3>Son Bloglar</h3>
                        <ul>
                            <asp:Repeater ID="Repeater3" runat="server">
                                <ItemTemplate>
                                    <li><a style=" font-size: 15px" href="blogLink.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK")  %></a></li>

                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>
                    </div>
                    <div class="comments">
                        <h3>Son Yorumlar</h3>
                        <asp:Repeater ID="Repeater4" runat="server">
                            <ItemTemplate>
                                <ul>
                                    <li><a style=" font-size: 15px" href="yorumLink.aspx?BLOGID=<%# Eval("YORUMBLOG") %>"><%# Eval("KULLANICIADI") %> - <%# Eval("YORUMICERIK") %></a></li>

                                </ul>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>

                    <div class="categories">
                        <h3>Kategoriler</h3>
                        <ul>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <ItemTemplate>
                                    <li><a style=" font-size: 15px" href="kategoriDetay.aspx?KATID=<%# Eval("KATID") %>"><%# Eval("KATAD")%></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
