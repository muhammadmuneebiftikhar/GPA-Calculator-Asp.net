<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormulaTable.aspx.cs" Inherits="GPA_Calculator.FormulaTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formula Table</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <h1 class="text-center focus">NUML GPA CALCULATOR</h1>
    <form id="form1" runat="server">
        <div class="text-center">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-condensed table-hover" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
