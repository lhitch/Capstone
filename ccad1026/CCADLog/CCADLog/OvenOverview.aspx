<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OvenOverview.aspx.cs" Inherits="CCADLog.OvenOverview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Oven1Btn" CssClass="ovenButton" runat="server" Text="Oven 1" OnClick="OvenBtn_Click" />
        <asp:Button ID="Oven2Btn" CssClass="ovenButton" runat="server" Text="Oven 2" OnClick="OvenBtn_Click" />
        <asp:Button ID="Oven3Btn" CssClass="ovenButton" runat="server" Text="Oven 3" OnClick="OvenBtn_Click" />
        <asp:Button ID="Oven4Btn" CssClass="ovenButton" runat="server" Text="Oven 4" OnClick="OvenBtn_Click" />
        <br />
        <asp:Button ID="Oven5Btn" CssClass="ovenButton" runat="server" Text="Oven 5" OnClick="OvenBtn_Click" />
        <asp:Button ID="Oven6Btn" CssClass="ovenButton" runat="server" Text="Oven 6" OnClick="OvenBtn_Click" />
        <asp:Button ID="Oven7Btn" CssClass="ovenButton" runat="server" Text="Oven 7" OnClick="OvenBtn_Click" />
        <asp:Button ID="Oven8Btn" CssClass="ovenButton" runat="server" Text="Oven 8" OnClick="OvenBtn_Click" />
        <br />
        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Return" OnClick="Return" />
    </form>
</body>
</html>
