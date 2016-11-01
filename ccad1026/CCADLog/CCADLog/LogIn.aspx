<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="CCADLog.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:Table id="LogInTable" runat="server" Width="40%" Height="30%" style="margin: 17% 0 0 30%">
        <asp:TableRow Height="43%">
            <asp:TableCell Width="20%" style="font-size: 2rem; font-size: 4.4vmin"><asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label></asp:TableCell>
            <asp:TableCell Width="80%" style="font-size: 2rem; font-size: 4.4vmin"><asp:TextBox ID="TextBox1" Height="50%" runat="server" style="font-size: 2rem; font-size: 4.4vmin"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow Height="43%">
            <asp:TableCell style="font-size: 2rem; font-size: 4.4vmin"><asp:Label ID="Label2" runat="server" Text="Password:  "></asp:Label></asp:TableCell>
            <asp:TableCell><asp:TextBox ID="TextBox2" Height="50%" runat="server" style="font-size: 2rem; font-size: 4.4vmin"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow Height="14%">
            <asp:TableCell style="font-size: 2rem; font-size: 4.4vmin"><asp:Button ID="Button1" Height="80%" style="font-size: 2rem; font-size: 4.4vmin; vertical-align: top" CssClass="button" runat="server" Text="Log In" OnClick="LogIn_Click" /></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
</html>
