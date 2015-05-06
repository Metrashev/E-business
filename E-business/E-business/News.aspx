<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="E_business.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridViewNews" runat="server">
    </asp:GridView>
    <?xml version="1.0" ?>
    <rss version="2.0">
            <channel>
                <title>Example Channel</title> 
                <link>>http://btv.bg/</link> 
                <description>My example channel</description> 
                <item>
                    <title>News for September the Second</title>
                    <link>>http://btv.bg/</link> 
                    <description>other things happened today</description> 
                </item>
                <item>
                    <title>News for September the First</title>
                    <link>http://btv.bg/</link> 
                </item>
            </channel>
        </rss>
</asp:Content>
