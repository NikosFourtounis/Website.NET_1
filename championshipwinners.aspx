<%@ Page Language="C#" AutoEventWireup="true" CodeFile="championshipwinners.aspx.cs" Inherits="championshipwinners" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        Championships winners per year</div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Choose year:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="year" DataValueField="year" style="margin-left: 26px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:icsd13195ConnectionString %>" SelectCommand="SELECT [year] FROM [championship]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show list" />
        </p>
        <asp:Label ID="Label2" runat="server" Text="Pilot is:"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Label ID="Label3" runat="server" Text="Team is:"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Menu" />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
