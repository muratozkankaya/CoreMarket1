<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auth.aspx.cs" Inherits="CoreMarket.Auth" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş Ekranı</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .login-container {
            max-width: 400px;
            margin: 0 auto;
            margin-top: 100px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-container">
                <h2 class="text-center mb-4">Giriş Yap</h2>
                <div class="form-group">
                    <label for="username">Kullanıcı Adı</label>
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" Required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="password">Şifre</label>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" placeholder="Şifre" Required="true"></asp:TextBox>
                </div>
                <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" CssClass="btn btn-primary btn-block" OnClick="btnGiris_Click" />
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
