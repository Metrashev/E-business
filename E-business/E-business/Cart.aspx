<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_business.Cart" %>

<%@ Register Src="~/BookInfo.ascx" TagPrefix="uc1" TagName="BookInfo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
<<<<<<< HEAD
<%--            OrderID:
            <asp:Label ID="OrderIDLabel" runat="server" Text='<%# Eval("OrderID") %>' />
            <br />
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
            <br />
            BookTitle:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            Qty:
            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' />
            <br />
<br />--%>
=======
            
        </ItemTemplate>
>>>>>>> f4c63725b70a04256bc947d109b42400b2585108

            <uc1:BookInfo runat="server" ID="BookInfo" BookNum='<%# Eval("BookID") %>'/>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT * FROM [ShopCart]"></asp:SqlDataSource>
</asp:Content>
