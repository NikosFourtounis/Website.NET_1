<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Menu"></asp:Label>
    
    </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Καλωσόρισες," Font-Bold="True"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
        </p>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <asp:Image ID="Image1" runat="server" Height="82px" style="margin-left: 241px" Width="81px" />
        <p>
            <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="View Pilots" Width="153px" BackColor="#999999" Font-Bold="True" />
            <asp:Button ID="Button5" runat="server" BackColor="#999999" OnClick="Button5_Click" style="font-weight: 700; margin-left: 41px" Text="Championships winners" Width="168px" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Create new team" BackColor="#999999" Font-Bold="True" Width="151px" />
            <asp:Button ID="Button6" runat="server" BackColor="#999999" OnClick="Button6_Click" style="font-weight: 700; margin-left: 43px" Text="Pilot list with teams" Width="168px" />
        </p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Tracks" Width="149px" BackColor="#999999" Font-Bold="True" />
        <asp:Button ID="Button4" runat="server" BackColor="#999999" OnClick="Button4_Click" style="font-weight: 700; margin-left: 45px" Text="Championships list" Width="167px" />
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Log out" />
        </p>
    </form>
</body>
</html>
