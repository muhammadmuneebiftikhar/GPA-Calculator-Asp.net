<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeForm.aspx.cs" Inherits="GPA_Calculator.HomeForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 111%
        }
    </style>
</head>
<body>
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
                <td class="text-center">
                    <label class="text-center form-control">SGPA By Marks :: ------>>></label>
                </td>
                <th colspan="2">
                    <asp:Button ID="btnSgpaByMarks" runat="server" Text="Sgpa_By_Marks" Width="500px" CssClass="btn btn-primary text-center" OnClick="btnSgpaByMarks_Click" />
                </th>
            </tr>
            <tr>
                <td class="text-center">
                    <label class="text-center form-control">SGPA By Grades :: ------>>></label>
                </td>
                <th colspan="2">
                    <asp:Button ID="btnSgpaByGrades" runat="server" Text="Sgpa_By_Grades" Width="500px" CssClass="btn btn-danger text-center" OnClick="btnSgpaByGrades_Click" />
                </th>
            </tr>
            <tr>
                <td class="text-center">
                    <label class="text-center form-control">CGPA :: ------>>></label>
                </td>
                <th colspan="2">
                    <asp:Button ID="btnCgpa" runat="server" Text="CGPA" Width="500px" CssClass="btn btn-success text-center" OnClick="btnCgpa_Click" />
                </th>
            </tr>
            <tr>
                <td class="text-center">
                    <label class="text-center form-control">Formula Table :: ------>>></label>
                </td>
                <th colspan="2">
                    <asp:Button ID="btnFormulaTable" runat="server" Text="Formula Table" Width="500px" CssClass="btn btn-warning text-center" OnClick="FormulaTable_Click"/>
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
                <td class="text-center">
                    <label class="text-center form-control">Logout :: ------>>></label>
                </td>
                <th colspan="2">
                    <asp:Button ID="btnLogot" runat="server" Text="Logout" Width="500px" CssClass="btn btn-default text-center" OnClick="btnLogot_Click"/>
                </th>
            </tr>
        </table>
    </form>
</body>
</html>
