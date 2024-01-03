<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SellProduct.aspx.cs" Inherits="CoreMarket.SellProduct" %>

<asp:Content ID="ContentSell" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="Content/SellProduct.css" />
    </head>
    <body>
    <div>
        <h2>Ürün Satışı</h2>
        <asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblMaxStock" runat="server" Visible="false"></asp:Label>
        <br />
        <asp:TextBox ID="txtSellQuantity" runat="server" type="number" min="1" max="100" oninput="validity.valid||(value='');"></asp:TextBox>
        <asp:Button ID="btnSell" runat="server" Text="Satış Yap" OnClick="btnSell_Click" />
        <br />
        <asp:Label ID="lblSaleResult" runat="server" Visible="false"></asp:Label>
    </div>
    </body>
    </html>
</asp:Content>

