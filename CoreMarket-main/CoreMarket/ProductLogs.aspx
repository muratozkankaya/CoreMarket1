<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ProductLogs.aspx.cs" Inherits="CoreMarket.ProductLogs" %>

<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
    <head>
        <link rel="stylesheet" href="Content/ProductLog.css"/>
    </head>
    <body>
      <div class="containerProductLogList">
          <h2 class="section-titleProductLogList">Ürün Yönetim Geçmişi</h2>
          <asp:Repeater ID="repeaterProductLogs" runat="server">
              <ItemTemplate>
                  <div class="product-item shadow-lg p-3 mb-5 bg-body-tertiary rounded">
                      <h2 class="product-title"><%# Eval("Action") %></h2>
                      <p class="product-info">İsmi: <%# Eval("ProductName") %></p>
                      <p class="product-info">Adet: <%# Eval("Count") %></p>
                      <p class="product-info">Alış Fiyatı: <%# Eval("BoughtPrice") %></p>
                      <p class="product-info">Tarih: <%# Eval("DateTime") %></p>
                  </div>
              </ItemTemplate>
          </asp:Repeater>
      </div>
  </body>
</asp:Content>

