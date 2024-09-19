<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="istatistik.aspx.cs" Inherits="diziYorumSitesi.admin.istatistik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Toplam Blog Sayısı</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/blog.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Toplam Yorum Sayısı</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/comment.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Toplam Film Sayısı</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/movie.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Toplam Dizi Sayısı</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/tv.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
      
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Toplam Belgesel Sayısı</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/documentary.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 mb-3">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">Toplam Animasyon Sayısı</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/zoo.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-secondary">En Fazla Yorumlu Blog</h5>
                    <div class="row">
                        <div class="col-md-9">
                            <h1 class="card-text">
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                        <div class="col-md-3">
                            <img src="../images/text.png" width="70" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
