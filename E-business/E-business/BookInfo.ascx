<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookInfo.ascx.cs" Inherits="E_business.BookInfo" %>
<div class="col-sm-2">Книга №:</div><asp:Label CssClass="col-sm-2" ID="lblBookNum" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Заглавие:</div><asp:Label ID="lblBookTitle" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Цена:</div><asp:Label ID="lblBookPrice" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Количество:</div><asp:Label ID="lblBookQty" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Сума:</div><asp:Label ID="lblBooksSum" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<asp:CheckBox ID="chbAddedForDelete" runat="server" Text="Отбележи за купуване" />
