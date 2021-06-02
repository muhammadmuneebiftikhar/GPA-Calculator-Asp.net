<%@ Page Language="C#" MasterPageFile="~/GPACalc.Master" AutoEventWireup="true" CodeBehind="FormulaTable.aspx.cs" Inherits="GPA_Calculator.FormulaTable" %>

<asp:Content ID="title" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">Formula</asp:Content>
<asp:Content ID="h1Tag" ContentPlaceHolderID="h1ContentPlaceHolder" runat="server">Formula Table</asp:Content>
<asp:Content ID="BreadCrumb" ContentPlaceHolderID="BreadContentPlaceHolder" runat="server">Formula</asp:Content>
<asp:Content ID="mainForm" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 class="text-center focus">NUML GPA CALCULATOR</h1>
    <form id="form1" runat="server">
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </form>

</asp:Content>