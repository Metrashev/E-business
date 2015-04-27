<%@ Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="E_business._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="hello-message">
        <span>Здравейте,</span><%: Context.User.Identity.GetUserName()  %> !
    </div>

    <div class="date-now-message">
        <span>Датата и часът са:</span><%: DateTime.Now  %>
    </div>

    <div><span>Вашият браузър е:</span><%: Request.Browser.Browser  %></div>
</asp:Content>
