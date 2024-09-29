<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="blogDetay.aspx.cs" Inherits="diziYorumSitesi.blogDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .blogDetay {
            font-family: 'Lato', sans-serif;
            color: #9a9da0;
            font-size: 1em;
            line-height: 1.8em;
            margin: 1em 0;
            text-align: justify;
        }
    </style>
    <div class="single">
        <div class="container">
            <div class="col-md-8 single-main">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="content-grid">
                            <div class="content-grid-info ">


                                <img src="<%# Eval("BLOGGORSEL")  %>" alt="" width="300" style="display: block; margin-left: auto; margin-right: auto" />

                                <h3 ><a style="color:#4a5054; text-decoration:none" href="blogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK")%></a></h3>

                                <p class="blogDetay">
                                    <%# Eval("BLOGTARIH")  %>
                                    <br />
                                    <%# Eval("BLOGICERIK")  %>
                                </p>

                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <ul class="comment-list">
                            <li>
                                <img src="images/avatar.png" width="50">
                                <div class="desc">
                                    <p><b><%# Eval("KULLANICIADI")  %>:</b> <%# Eval("YORUMICERIK")  %></p>
                                </div>

                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:PlaceHolder ID="yorum" runat="server">
                <div class="">
                    <h3 style="color:#4a5054;">Yorum Yap</h3><br />
                    <form runat="server">
                        <asp:TextBox ID="txtAd" runat="server" placeholder="Ad" required="" CssClass="form-control"></asp:TextBox><br />
                        <asp:TextBox ID="txtMail" runat="server" placeholder="E-posta" CssClass="form-control" required=""></asp:TextBox><br />
                        <asp:TextBox ID="txtMesaj" runat="server" placeholder="Yorum yaz" CssClass="form-control" required="" TextMode="MultiLine" Height="100"></asp:TextBox>
                       <br />
                        <asp:Button ID="btnYorum" runat="server" Text="Yorum Yap" CssClass="btn btn-outline-secondary" OnClick="btnYorum_Click" />
                    </form>
                </div>
                    </asp:PlaceHolder>
            </div>
        </div>
    </div>

</asp:Content>
