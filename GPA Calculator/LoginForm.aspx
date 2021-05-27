<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="GPA_Calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <h1 class="text-center focus">NUML GPA CALCULATOR</h1>
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
                    <label class="form-control text-right">Password :</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary text-center" OnClick="btnLogin_Click"/>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="3"></td>
            </tr>
            <tr>
                <td colspan="3">
                </td>
            </tr>
            <tr class="text-center">
                <td>
                </td>
                <td>
                    <p class=" text-center">Register Yourself If You Are New Here.</p>
                    <asp:Button ID="Button1" runat="server" Text="Click To Register!" CssClass="btn btn-danger text-center" OnClick="Button1_Click"/>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
