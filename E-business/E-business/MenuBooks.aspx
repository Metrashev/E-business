<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuBooks.aspx.cs" Inherits="E_business.MenuBooks" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper-books">
        <h3>Mеню и категории</h3>

        <div class="wrapper-search">
            <asp:Label ID="Label2" runat="server" Text="Търсене" meta:resourcekey="Label2Resource1"></asp:Label>
            <asp:TextBox ID="TextBoxSearchText" runat="server" meta:resourcekey="TextBoxSearchTextResource1"></asp:TextBox>
            <asp:Button ID="ButtonSearchBooks" runat="server" CssClass="btn btn-primary" Text="Търси" OnClick="ButtonSearchBooks_Click" meta:resourcekey="ButtonSearchBooksResource1" />
        </div>

        <asp:GridView ID="GridView2" CssClass="table-book-category" ShowHeader="true" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" meta:resourcekey="GridView2Resource1">
            <Columns>
                <asp:TemplateField HeaderText="Категория" SortExpression="BookType" meta:resourcekey="TemplateFieldResource1">
                    <ItemTemplate>
                        <asp:LinkButton Text='<%# Bind("BookType") %>' ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" meta:resourcekey="LinkButton1Resource1"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT DISTINCT BookType FROM Books"></asp:SqlDataSource>

        <asp:GridView ID="GridView1" CssClass="table-book-menu" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" meta:resourcekey="GridView1Resource1">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="Книга №" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" />
                <asp:BoundField DataField="BookType" HeaderText="Тип" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" />
                <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" />
                <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" />
                <asp:BoundField DataField="BookPrice" HeaderText="Цена" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" />
                <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" ButtonType="Link" meta:resourcekey="CommandFieldResource1" />
            </Columns>

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <div class="cart-link">
            <asp:Label ID="Label1" runat="server" Text="Кошница" meta:resourcekey="Label1Resource1"></asp:Label>
            <asp:ImageButton ImageUrl="~/BookPictures/kosh.jpg" ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" meta:resourcekey="ImageButton1Resource1" />
        </div>

    </div>
</asp:Content>
