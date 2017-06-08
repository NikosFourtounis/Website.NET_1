﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PilotList.aspx.cs" Inherits="_PilotList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="#0099FF" Font-Bold="True" Font-Underline="True" Height="28px" Text="Pilot List:" Width="143px"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                <asp:BoundField DataField="dateofBirth" HeaderText="dateofBirth" SortExpression="dateofBirth" />
                <asp:BoundField DataField="numberOfChampionships" HeaderText="numberOfChampionships" SortExpression="numberOfChampionships" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:icsd13195ConnectionString %>" SelectCommand="SELECT * FROM [Pilot]" OnSelecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 558px" Text="Menu" Width="115px" />
        </p>
    </form>
</body>
</html>