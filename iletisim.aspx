<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="diziYorumSitesi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
	 <div class="container">
		     <div class="contact-info">
			 <h2>CONTACT</h2>
			 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Contrary to popular belief.</p>
		     </div>
			 <div class="contact-details">				 
			 <form runat="server">
				 <asp:TextBox ID="txtAd" runat="server" placeholder="Kullanıcı adı" required=""></asp:TextBox>
				 <asp:TextBox ID="txtMail" runat="server" placeholder="E-posta" required=""></asp:TextBox>
				 <asp:TextBox ID="txtTel" runat="server" placeholder="Telefon" required=""></asp:TextBox>
				 <asp:TextBox ID="txtKonu" runat="server" placeholder="Konu" required=""></asp:TextBox>
				 <asp:TextBox ID="txtMesaj" runat="server" placeholder="Mesaj" TextMode="MultiLine" Height="150" required=""></asp:TextBox>
				 <asp:Button ID="btnKaydet" runat="server" Text="Gönder" OnClick="btnKaydet_Click" />
			 </form>
		  </div>
		  <div class="contact-details">
			  <div class="col-md-6 contact-map">
				 <h4>FIND US HERE</h4>
				<div style="max-width:100%;list-style:none; transition: none;overflow:hidden;width:500px;height:500px;"><div id="embed-map-display" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=istanbul&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"></iframe></div><a class="my-codefor-googlemap" rel="nofollow" href="https://www.bootstrapskins.com/themes" id="enable-maps-data">premium bootstrap themes</a><style>#embed-map-display img{max-width:none!important;background:none!important;font-size: inherit;font-weight:inherit;}</style></div>
			  </div>
			  <div class="col-md-6 company_address">		 
					<h4>GET IN TOUCH</h4>
					<p>500 Lorem Ipsum Dolor Sit,</p>
					<p>22-56-2-9 Sit Amet, Lorem,</p>
					<p>USA</p>
					<p>Phone:(00) 222 666 444</p>
					<p>Fax: (000) 123 456 78 0</p>
					<p>Email: <a href="mailto:info@example.com">info@mycompany.com</a></p>
					<p>Follow on: <a href="#">Facebook</a>, <a href="#">Twitter</a></p>
			 </div>
			  <div class="clearfix"></div>
	     </div>		 


			 </div>
	 </div>
</asp:Content>
