<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectrack.aspx.cs" Inherits="selectrack" %>

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
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Underline="True" Text="Select country"></asp:Label>
            :<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="country" DataValueField="country" Height="21px" style="margin-left: 96px" Width="116px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:icsd13195ConnectionString %>" SelectCommand="SELECT [country] FROM [Track]"></asp:SqlDataSource>
        </p>
        <asp:Button ID="Button1" runat="server" BackColor="#999999" OnClick="Button1_Click" Text="Show tracks" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" BackColor="#999999" OnClick="Button2_Click" style="margin-left: 0px" Text="Menu" Width="138px" />
        </p>
    </form>
</body>
</html>
