<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="EStore.Admin.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add Category:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LblAddCategory" runat="server">Name:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCategory" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Text="* Category name required." ControlToValidate="AddCategory" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="LblAddCategoryDesc" runat="server">Description:</asp:Label></td>
            <td>
                <asp:TextBox ID="AddCategoryDesc" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Text="* Description required." ControlToValidate="AddCategoryDesc" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <asp:Button ID="AddCategoryButton" runat="server" Text="Add Category" OnClick="AddCategoryButton_Click"  CausesValidation="true"/>
    <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
    <p></p>
    <h3>Remove Category:</h3>
    <table>
        <tr>
            <td><asp:Label ID="LabelRemoveCategory" runat="server">Product:</asp:Label></td>
            <td><asp:DropDownList ID="DropDownRemoveCategory" runat="server" ItemType="EStore.Models.Category" 
                                  SelectMethod="GetCategories" AppendDataBoundItems="true" 
                                  DataTextField="CategoryName" DataValueField="CategoryId" >
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <p></p>
    <asp:Button ID="RemoveCategoryButton" runat="server" Text="Remove Category" OnClick="RemoveCategoryButton_Click" CausesValidation="false"/>
    <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>
</asp:Content>
