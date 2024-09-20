<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="diziYorumSitesi.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
        <div class="container">
            <div class="contact-info">
                <h2 style="color: #4a5054;">İLETİŞİM</h2>
                <p>
                    Merhaba ve hoş geldiniz!

Sizlerle her zaman bağlantıda olmak ve geri bildirimlerinizi duymak bizim için çok değerli. Aklınıza takılan sorular, paylaşmak istediğiniz öneriler ya da merak ettiğiniz konularla ilgili bizimle iletişime geçmekten çekinmeyin. Blog sayfamızda daha fazla içerik görmek istediğiniz konuları ya da geliştirmemizi düşündüğünüz alanları bizimle paylaşarak, bu platformu birlikte daha iyi hale getirebiliriz.
                </p>
            </div>
            <div class="">
                <form runat="server">
                    <div class="row">
                        <div class="col-md-6">
                            <asp:TextBox ID="txtAd" runat="server" placeholder="Kullanıcı adı" CssClass="form-control mb-3" required=""></asp:TextBox>

                            <asp:TextBox ID="txtMail" runat="server" placeholder="E-posta" required="" CssClass="form-control mb-3"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtTel" runat="server" placeholder="Telefon" required="" CssClass="form-control mb-3"></asp:TextBox>

                            <asp:TextBox ID="txtKonu" runat="server" placeholder="Konu" required="" CssClass="form-control mb-3"></asp:TextBox>
                        </div>
                    </div>

                    <asp:TextBox ID="txtMesaj" runat="server" placeholder="Mesaj" TextMode="MultiLine" Height="150" required="" CssClass="form-control mb-3"></asp:TextBox>
                    <asp:Button ID="btnKaydet" runat="server" Text="Gönder" CssClass="btn btn-outline-secondary" OnClick="btnKaydet_Click" />
                </form>
            </div>
            <div class="contact-details">
                <div class="row">
                    <div class="col-md-6 contact-map">
                        <h4>BİZ BURADAYIZ</h4>
                        <div style="max-width: 100%; list-style: none; transition: none; overflow: hidden; width: 600px; height: 300px;">
                            <div id="embed-map-display" style="height: 100%; width: 100%; max-width: 100%;">
                                <iframe style="height: 100%; width: 100%; border: 0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=istanbul&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe>
                            </div>
                            <a class="my-codefor-googlemap" rel="nofollow" href="https://www.bootstrapskins.com/themes" id="enable-maps-data">premium bootstrap themes</a><style>
                                                                                                                                                                              #embed-map-display img {
                                                                                                                                                                                  max-width: none !important;
                                                                                                                                                                                  background: none !important;
                                                                                                                                                                                  font-size: inherit;
                                                                                                                                                                                  font-weight: inherit;
                                                                                                                                                                              }
                                                                                                                                                                          </style>
                        </div>
                    </div>
                    <div class="col-md-6 company_address">
                        <h4>İLETİŞİME GEÇİN</h4>
                        <p class="mt-3">500 Lorem Ipsum Dolor Sit,</p>
                        <p>22-56-2-9 Sit Amet, Lorem,</p>
                        <p>TR</p>
                        <p>Tel:(00) 222 666 444</p>
                        <p>Fax: (000) 123 456 78 0</p>
                        <p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
                        <p>Takip Et: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
