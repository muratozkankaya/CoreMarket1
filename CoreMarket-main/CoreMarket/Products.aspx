<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Products.aspx.cs" Inherits="CoreMarket.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="Content/ProductList.css" />
        <title>Ürünler</title>
    </head>
    <body>
        <div class="containerProductList">
            <h2 class="section-titleProductList">Ürünler</h2>
            <asp:Repeater ID="repeaterProducts" runat="server">
                <ItemTemplate>
                    <div class="product-item shadow-lg p-3 mb-5 bg-body-tertiary rounded">
                        <h2 class="product-title"><%# Eval("Name") %></h2>
                        <p class="product-info">Stok: <%# Eval("Count") %></p>
                        <p class="product-info">Fiyat: <%# Eval("Price") %></p>
                        <p class="product-info">Alış Fiyatı: <%# Eval("PurcasedPrice") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </body>
    </html>
</asp:Content>
