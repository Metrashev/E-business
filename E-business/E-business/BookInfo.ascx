<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookInfo.ascx.cs" Inherits="E_business.BookInfo" %>
<div class="wrapper-grid-cart">
    <div class="cart-title-book">Книга №:</div>
    <asp:Label CssClass="book-title" ID="lblBookNum" runat="server" Text="Label"></asp:Label>
    <div class="cart-title-book">Заглавие:</div>
    <asp:Label ID="lblBookTitle" CssClass="" runat="server" Text="Label"></asp:Label>
    <div class="cart-title-book">Цена:</div>
    <asp:Label ID="lblBookPrice" CssClass="" runat="server" Text="Label"></asp:Label>
    <div class="cart-title-book">Количество:</div>
    <asp:Label ID="lblBookQty" CssClass="" runat="server" Text="Label"></asp:Label>
    <div class="cart-title-book">Сума:</div>
    <asp:Label ID="lblBooksSum" CssClass="" runat="server" Text="Label"></asp:Label>
</div>

<asp:CheckBox ID="chbAddedForDelete" runat="server" Text="Отбележи за купуване" />
