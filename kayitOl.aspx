<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitOl.aspx.cs" Inherits="diziYorumSitesi.kayitOl" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Kullanıcı Kayıt</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->

    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="login/css/util.css">
    <link rel="stylesheet" type="text/css" href="login/css/main.css">
    <!--===============================================================================================-->
</head>

<body>
    <style>
        .labels {
            color: green;
            text-align: center;
            display: block;
        }
    </style>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="images/clapperboard.png" alt="IMG">
                </div>

                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">Kullanıcı Kayıt
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Geçerli bir kullanıcı adı girin">
                        <%--<input class="input100" type="text" name="email" >--%>
                        <asp:TextBox ID="txtAd" runat="server" placeholder="Kullanıcı adı" CssClass="input100"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Geçerli bir mail adresi girin: ex@abc.xyz">
                        <%--<input class="input100" type="text" name="email" >--%>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="input100"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Geçerli şifre girin">
                        <%--<input class="input100" type="password" name="pass" >--%>
                        <asp:TextBox ID="txtSifre" runat="server" placeholder="Şifre" CssClass="input100" TextMode="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="" CssClass="labels"></asp:Label>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" CssClass="login100-form-btn" OnClick="Button1_Click" />
                        <%--<button class="login100-form-btn">
							Giriş
						</button>--%>
                    </div>

                  

                    <div class="text-center p-t-136">
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="txt2" NavigateUrl="~/login.aspx">Zaten bir hesabım var</asp:HyperLink>
                        <%--<a class="txt2" href="#">
							Yeni üyelik oluşturun
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>--%>
                    </div>
                </form>
            </div>
        </div>
    </div>




    <!--===============================================================================================-->
    <script src="login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="login/vendor/bootstrap/js/popper.js"></script>
    <script src="login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="login/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="login/js/main.js"></script>

</body>
</html>
