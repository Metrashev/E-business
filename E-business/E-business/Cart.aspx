<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_business.Cart" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<%@ Register Src="~/BookInfo.ascx" TagPrefix="uc1" TagName="BookInfo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList CssClass="wrapper-cart" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemDataBound="DataList1_ItemDataBound" meta:resourcekey="DataList1Resource1">
        <ItemTemplate>
            <br />
            <asp:Label runat="server" Text="Книга №: " meta:resourcekey="LabelResource1"></asp:Label>
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <br />
            <asp:Label runat="server" Text="Заглавие: " meta:resourcekey="LabelResource2"></asp:Label>
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            <asp:Label runat="server" Text="Цена: " meta:resourcekey="LabelResource3"></asp:Label>
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            <asp:Label runat="server" Text="Количество: " meta:resourcekey="LabelResource4"></asp:Label>
            <asp:Label ID="QtyLabel" runat="server" Text='<%# Eval("Qty") %>' meta:resourcekey="QtyLabelResource1" />
            <br />
            <asp:Label runat="server" Text="Сума: " meta:resourcekey="LabelResource5"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text='<%# Convert.ToInt32(Eval("Qty")) * Convert.ToDecimal(Eval("Price")) %>' meta:resourcekey="Label1Resource1" />
            <br />
            <asp:CheckBox ID="chbxCheckForDelete" Text="Отбележете за изтриване" runat="server" meta:resourcekey="chbxCheckForDeleteResource1" />
        </ItemTemplate>
    </asp:DataList>

    <asp:Label runat="server" Text="Общо: " meta:resourcekey="LabelResource6"></asp:Label>
    <asp:Label ID="lblCartSum" runat="server" meta:resourcekey="lblCartSumResource1"></asp:Label>

    <asp:Button ID="btnDeleteSelected" runat="server" Text="Изтриване на маркираните книги" OnClick="btnDeleteSelected_Click" meta:resourcekey="btnDeleteSelectedResource1"/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT * FROM [ShopCart]"></asp:SqlDataSource>
</asp:Content>

<%--            <uc1:BookInfo runat="server" ID="BookInfo"
                BookNum='<%# Eval("BookID") %>'
                BookTitle='<%# Eval("BookTitle") %>'
                BookPrice='<%# Eval("Price", "{0:f2}") %>'
                BookQty='<%# Eval("Qty") %>' />--%>
