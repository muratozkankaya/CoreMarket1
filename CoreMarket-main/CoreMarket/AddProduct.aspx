<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AddProduct.aspx.cs" Inherits="CoreMarket.AddProduct" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <link rel="stylesheet" href="Content/AddProduct.css" />
    </head>
    <div class="urunEkle">
        <h2>Ürün Ekle</h2>
        <div>
            <label for="txtName">Ürün Adı:</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtCount">Adet:</label>
            <asp:TextBox ID="txtCount" runat="server" TextMode="Number" oninput="preventNegative(event)"></asp:TextBox>
        </div>
        <div>
            <label for="txtPrice">Satılacak Fiyat:</label>
            <asp:TextBox ID="txtPrice" runat="server"  oninput="preventNegative(event)"></asp:TextBox>
        </div>
        <div>
            <label for="txtPurcasedPrice">Alınan Fiyat:</label>
            <asp:TextBox ID="txtPurcasedPrice" runat="server" oninput="preventNegative(event)"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnAddProduct" runat="server" Text="Ürün Ekle" OnClick="btnAddProduct_Click" />
        </div>
    </div>
</asp:Content>

