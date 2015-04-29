<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_business.Cart" %>

<%@ Register Src="~/BookInfo.ascx" TagPrefix="uc1" TagName="BookInfo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table">
        <ItemTemplate>
            <uc1:BookInfo runat="server" ID="BookInfo"
                BookNum='<%# Eval("BookID") %>'
                BookTitle='<%# Eval("BookTitle") %>'
                BookPrice='<%# Eval("Price", "{0:f2}") %>'
                BookQty='<%# Eval("Qty") %>' />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT * FROM [ShopCart]"></asp:SqlDataSource>
</asp:Content>
