<%@ Page Language="C#" MasterPageFile="~/GPACalc.Master" AutoEventWireup="true" CodeBehind="HomeForm.aspx.cs" Inherits="GPA_Calculator.HomeForm" %>

<asp:Content ID="title" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">Home</asp:Content>
<asp:Content ID="h1Tag" ContentPlaceHolderID="h1ContentPlaceHolder" runat="server">NUML | APP</asp:Content>
<asp:Content ID="BreadCrumb" ContentPlaceHolderID="BreadContentPlaceHolder" runat="server">Home</asp:Content>
<asp:Content ID="mainForm" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 class="text-center focus">NUML GPA CALCULATOR</h1>
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <td>
                    <label class="text-center form-control">Welcome ------>>></label>
                </td>
                <th>
                    <asp:TextBox ID="txtRollno" runat="server" CssClass="form-control text-center" Width="500px"></asp:TextBox>
                </th>
            </tr>
            <tr>
                
                <th colspan="3">
                    <asp:Button ID="btnSgpaByMarks" runat="server" Text="Sgpa_By_Marks" Width="500px" CssClass="btn btn-primary text-center" OnClick="btnSgpaByMarks_Click" />
                </th>
            </tr>
            <tr>
              
                <th colspan="3">
                    <asp:Button ID="btnSgpaByGrades" runat="server" Text="Sgpa_By_Grades" Width="500px" CssClass="btn btn-danger text-center" OnClick="btnSgpaByGrades_Click" />
                </th>
            </tr>
            <tr>
               
                <th colspan="3">
                    <asp:Button ID="btnCgpa" runat="server" Text="CGPA" Width="500px" CssClass="btn btn-success text-center" OnClick="btnCgpa_Click" />
                </th>
            </tr>
            <tr>
                
                <th colspan="3">
                    <asp:Button ID="btnFormulaTable" runat="server" Text="Formula Table" Width="500px" CssClass="btn btn-warning text-center" OnClick="FormulaTable_Click"/>
                </th>
            </tr>
            <tr>
               
                <th colspan="3">
                    <asp:Button ID="btnDocuments" runat="server" Text="Buy Documents" Width="500px" CssClass="btn btn-info text-center" OnClick="btnDocuments_Click"/>
                </th>
            </tr>
            <tr>
                <th colspan="3">
                </th>
            </tr>
            <tr>
                <th colspan="3">
                </th>
            </tr>
            <tr>
                <th colspan="3">
                </th>
            </tr>
            <tr>
                <th colspan="3">
                </th>
            </tr>
            <tr>
                
                <th colspan="3">
                    <asp:Button ID="btnLogot" runat="server" Text="Logout" Width="500px" CssClass="btn btn-dark text-center" OnClick="btnLogot_Click"/>
                </th>
            </tr>
        </table>
    </form>
</asp:Content>