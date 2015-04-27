<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuBooks.aspx.cs" Inherits="E_business.MenuBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Mеню и категории</h3>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:TemplateField HeaderText="BookType" SortExpression="BookType">
                <ItemTemplate>
                    <asp:LinkButton Text='<%# Bind("BookType") %>' ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT DISTINCT BookType FROM Books"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="BookID" HeaderText="Книга №" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookType" HeaderText="Тип" SortExpression="BookType" />
            <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" />
            <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" />
            <asp:BoundField DataField="BookPrice" HeaderText="Цена" SortExpression="BookPrice" />
            <asp:CommandField SelectText="Виж детайли за книгата" ShowSelectButton="True" ButtonType="Link"/>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQL %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
