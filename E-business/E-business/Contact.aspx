<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="E_business.Contact" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper-contacts">
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-sm-1 control-label" meta:resourcekey="LabelResource1">До:</asp:Label>
            <div class="col-sm-11">
                <asp:TextBox runat="server" ID="ContactTo" CssClass="form-control" meta:resourcekey="ContactToResource1" />
            </div>

            <asp:Label runat="server" CssClass="col-sm-1 control-label" meta:resourcekey="LabelResource2">От:</asp:Label>
            <div class="col-sm-11">
                <asp:TextBox runat="server" ID="ContactFrom" CssClass="form-control" meta:resourcekey="ContactFromResource1" />
            </div>

            <asp:Label runat="server" CssClass="col-sm-1 control-label" meta:resourcekey="LabelResource3">Относно:</asp:Label>
            <div class="col-sm-11">
                <asp:TextBox runat="server" ID="ContactUs" CssClass="form-control" meta:resourcekey="ContactUsResource1" />
            </div>

            <asp:Label runat="server" CssClass="col-sm-1 control-label" meta:resourcekey="LabelResource4">Запитване:</asp:Label>
            <div class="col-sm-11">
                <textarea id="TextArea1" cols="37" rows="6"></textarea>
            </div>

            <div class="col-sm-4">
                <asp:Button ID="Button1" CssClass="btn btn-success pull-left send-btn" runat="server" Text="Изпрати" OnClick="Button1_Click" meta:resourcekey="Button1Resource1" /></div>
        </div>
    </div>
</asp:Content>
