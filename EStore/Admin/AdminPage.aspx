<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="EStore.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Administration</h1>
    <hr />
    <div class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
        <li><a runat="server" href="~/Admin/Product">Product</a></li>
        <li><a runat="server" href="~/Admin/Category">Category</a></li>
    </ul>
    </div>
</asp:Content>