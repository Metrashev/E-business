<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BookInfo.ascx.cs" Inherits="E_business.BookInfo" %>
<div class="col-sm-2">Книга №:</div><asp:Label CssClass="col-sm-2" ID="Label1" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Заглавие:</div><asp:Label ID="Label2" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Цена:</div><asp:Label ID="Label3" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Количество:</div><asp:Label ID="Label4" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<div class="col-sm-2">Сума:</div><asp:Label ID="Label5" CssClass="col-sm-2" runat="server" Text="Label"></asp:Label>
<asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за купуване" />
