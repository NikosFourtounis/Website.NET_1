<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pilotsteams.aspx.cs" Inherits="Pilotsteams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" BackColor="#0099FF" Text="Pilot list and their teams:"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" BorderStyle="Dotted">
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create new team" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 99px" Text="Menu" />
        </p>
    </form>
</body>
</html>
