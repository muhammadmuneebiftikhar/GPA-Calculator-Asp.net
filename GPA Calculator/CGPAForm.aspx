<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CGPAForm.aspx.cs" Inherits="GPA_Calculator.CGPA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <h1 class="text-center Bold">NUML GPA CALCULATOR</h1>
    <form id="form1" runat="server">
        <table class="table  text-center">
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
                    <label class="form-control text-right">SGPA :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtSgpa" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td></td>
                <td>
                    <asp:Button ID="btnSgpaAdd" runat="server" Text="ADD" CssClass="btn btn-primary text-center" OnClick="btnSgpaAdd_Click" />
                    <asp:Button ID="btnSgpaDelete" runat="server" Text="Delete" CssClass="btn btn-danger text-right" OnClick="btnSgpaDelete_Click" />
                </td>
                <td></td>
            </tr>
            <tr class="text-center">
                <td></td>
                <td>
                    <asp:TextBox ID="txtCGPA" runat="server"></asp:TextBox>
                    <asp:Button ID="btnCal_Cgpa" runat="server" Text="Calculate_CGPA" CssClass="btn btn-danger text-center" OnClick="btnCal_Cgpa_Click" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn btn-default text-right" OnClick="btnBack_Click" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>

        </table>
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
