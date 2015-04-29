<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="E_business.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-group">
        <asp:Label runat="server" CssClass="col-sm-2 control-label">До:</asp:Label>
        <div class="col-sm-10">
            <asp:TextBox runat="server" ID="ContactTo" CssClass="form-control" />
        </div>

        <asp:Label runat="server" CssClass="col-sm-2 control-label">От:</asp:Label>
        <div class="col-sm-10">
            <asp:TextBox runat="server" ID="ContactFrom" CssClass="form-control" />
        </div>

        <asp:Label runat="server" CssClass="col-sm-2 control-label">Относно:</asp:Label>
        <div class="col-sm-10">
            <asp:TextBox runat="server" ID="ContactUs" CssClass="form-control" />
        </div>

        <asp:Label runat="server" CssClass="col-sm-2 control-label">Запитване:</asp:Label>
        <div class="col-sm-10">
            <textarea id="TextArea1" cols="37" rows="6"></textarea>
        </div>

        <div class="col-sm-2"><asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Изпрати" OnClick="Button1_Click" /></div>
    </div>
</asp:Content>
