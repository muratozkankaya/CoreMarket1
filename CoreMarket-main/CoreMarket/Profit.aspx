<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Profit.aspx.cs" Inherits="CoreMarket.Profit" %>

<asp:Content ID="ContentProfit" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <body>
        <div>
            <h1>Kâr - Ciro Hesaplayıcı</h1>
            <div>
                <asp:Label ID="revenueLabel" runat="server" Text=""></asp:Label>
            </div>
            <div>
                <asp:Label ID="profitLabel" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
