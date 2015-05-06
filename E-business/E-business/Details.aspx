<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="E_business.Details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1" meta:resourcekey="FormView1Resource1">
        <ItemTemplate>
            <div class="wrapper-book-details">
                <span class="hide">Книга Номер:</span>
                <asp:Label ID="BookIDLabel" Visible="False" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
                <br />
                <div class="content-book-details">
                    <span class="book-details-header">Заглавие:</span>
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
                    <br />
                    <span class="book-details-header">Автор:</span>
                    <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorLabelResource1" />
                    <br />
                    <span class="book-details-header">Описание:</span>
                    <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionLabelResource1" />
                    <br />
                    <span class="book-details-header">Цена:</span>
                    <asp:Label CssClass="price-book" ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice", "{0:f2} лв.") %>' meta:resourcekey="BookPriceLabelResource1" />
                    <br />
                    <span class="book-details-header">Количество:</span>
                    <asp:TextBox ID="TextBox1" Text="1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="RequiredFieldValidator" meta:resourcekey="RequiredFieldValidator1Resource1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Невалидна ст-ст" ValidationExpression="^[1-9]\d{0,2}$" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Button ID="ButtonAddToCart" CssClass="btn btn-success add-to-cart-btn" runat="server" OnClick="ButtonAddToCart_Click" Text="Добавете в кошницата" meta:resourcekey="ButtonAddToCartResource1" />
                    <asp:LinkButton ID="LinkButtonBack" CssClass="btn btn-primary back-btn" runat="server" OnClick="LinkButtonBack_Click" meta:resourcekey="LinkButtonBackResource1">Назад</asp:LinkButton>
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT [BookID], [BookTitle], [BookAuthor], [BookDescription], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
