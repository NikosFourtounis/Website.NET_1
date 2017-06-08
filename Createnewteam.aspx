<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Createnewteam.aspx.cs" Inherits="Createnewteam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="True" ForeColor="Black" Text="Παρακαλώ δώστε στοιχεία ομάδας"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="-id" BorderStyle="Solid" ForeColor="Black" Width="161px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-left: 6px" Width="91px"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="- Name" BorderStyle="Solid" Width="161px"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 6px" Width="97px"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="-DateFounded" BorderStyle="Solid" Width="161px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 6px; margin-bottom: 0px" TextMode="Date" Width="97px"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="-NumberOfChampionships" BorderStyle="Solid"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Width="97px" style="margin-left: 1px"></asp:TextBox>
        <p>
            <asp:Label ID="Label6" runat="server" Text="-HomeTrack" BorderStyle="Solid" Width="164px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="97px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create team" BackColor="#999999" Width="98px" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 150px" Text="Menu" />
    </form>
</body>
</html>
