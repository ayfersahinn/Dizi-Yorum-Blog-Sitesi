<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="diziYorumSitesi.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="content-grids">
            <div class="col-md-8 content-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info ">
                                <img src="<%# Eval("BLOGGORSEL")  %>" alt="" width="300" style="display: block; margin-left: auto; margin-right: auto;" />
                                <div class="post-info">
                                    <h4><a href="single.html"><%# Eval("BLOGBASLIK")%></a> <%# Eval("BLOGTARIH")  %></h4>
                                    <p><%# Eval("BLOGICERIK")  %></p>
                                    <a href="single.html"><span></span>Devamını oku</a>
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
                                <li><a href="#"><%# Eval("BLOGBASLIK")  %></a></li>

                            </ItemTemplate>
                        </asp:Repeater>

                    </ul>
                </div>
                <div class="comments">
                    <h3>Son Yorumlar</h3>
                    <ul>
                        <li><a href="#">Amada Doe </a>on <a href="#">Hello World!</a></li>
                        <li><a href="#">Peter Doe </a>on <a href="#">Photography</a></li>
                        <li><a href="#">Steve Roberts  </a>on <a href="#">HTML5/CSS3</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
                <div class="archives">
                    <h3>Arşiv</h3>
                    <ul>
                        <li><a href="#">October 2013</a></li>
                        <li><a href="#">September 2013</a></li>
                        <li><a href="#">August 2013</a></li>
                        <li><a href="#">July 2013</a></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>Kategoriler</h3>
                    <ul>
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <li><a href="#"><%# Eval("KATAD")  %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
