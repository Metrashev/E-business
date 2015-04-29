<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_business.Cart" %>

<%@ Register Src="~/BookInfo.ascx" TagPrefix="uc1" TagName="BookInfo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
<<<<<<< HEAD
            OrderID:
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
            <br />
            <uc1:BookInfo runat="server" ID="BookInfo" BookNum='<%# Eval("BookID") %>' />
=======
            <uc1:BookInfo runat="server" ID="BookInfo"
                BookNum='<%# Eval("BookID") %>'
                BookTitle='<%# Eval("BookTitle") %>'
                BookPrice='<%# Eval("Price", "{0:f2}") %>'
                BookQty='<%# Eval("Qty") %>' />
>>>>>>> 5af2deb6afe6d2099e136f4e02b995e2d7a08812
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT * FROM [ShopCart]"></asp:SqlDataSource>
</asp:Content>
