<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Login</div>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Για χαρά... παρακαλώ συνδεθείτε:"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Connect" Height="31px" Width="66px" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 144px" Text="Register" OnClick="Button2_Click" />
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
        </p>
    </form>
</body>
</html>
