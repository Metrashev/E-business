<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="E_business.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="BookID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            BookID:
            <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
            <br />
            BookTitle:
            <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' />
            <br />
            BookAuthor:
            <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' />
            <br />
            BookDescription:
            <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' />
            <br />
            BookPrice:
            <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="wrapper-book-details">
                <span class="hide">Книга Номер:</span>
                <asp:Label ID="BookIDLabel" Visible="false" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "BookPictures/" + Eval("BookID") + ".jpg" %>' />
                <br />
                <div class="content-book-details">
                    <span class="book-details-header">Заглавие:</span>
                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' />
                    <br />
                    <span class="book-details-header">Автор:</span>
                    <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' />
                    <br />
                    <span class="book-details-header">Описание:</span>
                    <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' />
                    <br />
                    <span class="book-details-header">Цена:</span>
                    <asp:Label CssClass="price-book" ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' />
                    <br />
                    <span class="book-details-header">Количество:</span>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="ButtonAddToCart" CssClass="btn btn-success add-to-cart-btn" runat="server" OnClick="ButtonAddToCart_Click" Text="Добавете в кошницата" />
                    <asp:LinkButton ID="LinkButtonBack" CssClass="btn btn-primary back-btn" runat="server" OnClick="LinkButtonBack_Click">Назад</asp:LinkButton>
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
