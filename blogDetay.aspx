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

                                <h3><a href="blogDetay.aspx?BLOGID=<%# Eval("BLOGID") %>"><%# Eval("BLOGBASLIK")%></a></h3>

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
                                <img src="images/avatar.png" class="img-responsive" alt="">
                                <div class="desc">
                                    <p><b><%# Eval("KULLANICIADI")  %>:</b> <%# Eval("YORUMICERIK")  %></p>
                                </div>

                            </li>
                        </ul>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="content-form">
                    <h3>Leave a comment</h3>
                    <form runat="server">
                        <asp:TextBox ID="txtAd" runat="server" placeholder="Ad" required=""></asp:TextBox>
                        <asp:TextBox ID="txtMail" runat="server" placeholder="E-posta" ></asp:TextBox>
                        <asp:TextBox ID="txtMesaj" runat="server" placeholder="Yorum yaz" TextMode="MultiLine" Height="100"></asp:TextBox>
                       
                        <asp:Button ID="btnYorum" runat="server" Text="Yorum Yap" OnClick="btnYorum_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
