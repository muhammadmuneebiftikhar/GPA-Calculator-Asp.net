<%@ Page Language="C#" MasterPageFile="~/GPACalc.Master" AutoEventWireup="true" CodeBehind="sgpaByMarks.aspx.cs" Inherits="GPA_Calculator.sgpaByMarks" %>

<asp:Content ID="title" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">CGPA</asp:Content>
<asp:Content ID="h1Tag" ContentPlaceHolderID="h1ContentPlaceHolder" runat="server">CGPA</asp:Content>
<asp:Content ID="BreadCrumb" ContentPlaceHolderID="BreadContentPlaceHolder" runat="server">CGPA</asp:Content>
<asp:Content ID="mainForm" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <form id="form1" runat="server">
        <table class="table  text-center container">
            <tr>
                <th>
                    <label class="form-control text-right">Roll No :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtRollNo" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Semester :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtSemester" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Subjects :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtSubject" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Credit_Hours :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtCR" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Marks :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtMarks" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td></td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="ADD" CssClass="btn btn-primary text-center" OnClick="btnAdd_Click"/>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger text-right" OnClick="btnDelete_Click"/>
                </td>
                <td></td>
            </tr>
            <tr class="text-center">
                <td></td>
                <td>
                    <asp:TextBox ID="textCR" Visible="false" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPoints" Visible="false" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtMarks_SGPA" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnCal_SGPA" runat="server" Text="Calculate_SGPA" CssClass="btn btn-danger text-center" OnClick="btnCal_SGPA_Click"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-dark text-right" OnClick="btnBack_Click"/>
                </td>
                <td></td>
            </tr>
            <tr>
                <th colspan="3">
                    <asp:Button ID="btnLogot" runat="server" Text="Logout" Width="800px" CssClass="btn btn-dark text-center" OnClick="btnLogot_Click"/>
                </th>
            </tr>

        </table>
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover">
            </asp:GridView>
        </div>
    </form>

</asp:Content>