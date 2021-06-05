<%@ Page Title="" Language="C#" MasterPageFile="~/GPACalc.Master" AutoEventWireup="true" CodeBehind="ProductAdmin.aspx.cs" Inherits="GPA_Calculator.ProductAdmin" %>
<asp:Content ID="TitleContentPlaceHolder" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
    Modify Products
</asp:Content>
<asp:Content ID="h1ContentPlaceHolder" ContentPlaceHolderID="h1ContentPlaceHolder" runat="server">
    Modify Products
</asp:Content>
<asp:Content ID="BreadContentPlaceHolder" ContentPlaceHolderID="BreadContentPlaceHolder" runat="server">
    Products Admin
</asp:Content>
<asp:Content ID="MainContentPlaceHolder" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <th>
                    <label class="form-control text-right">Name :</label>
                </th>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-dark" OnClick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Image Name :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtImage" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right"> Upload :</label>
                </th>
                <td colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Price :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtPrice" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Description :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtDes" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnInsertProduct" runat="server" Text="Add" CssClass="btn btn-success text-center" OnClick="btnInsertProduct_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
                </td>
                <td>
                </td>
            </tr>
           
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-info text-center" OnClick="btnBack_Click"/>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover">
            </asp:GridView>
        </div>
        </form>
</asp:Content>
