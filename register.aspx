<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-decoration: underline; font-weight: 700">
    
        Register Page<br />
        <br />
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 22px"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Surname:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 4px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="77px" />
        </p>
        <p>
            <asp:Label ID="Label5" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
