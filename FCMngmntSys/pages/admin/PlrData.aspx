<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlrData.aspx.cs" Inherits="FCMngmntSys.pages.admin.PlrData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource_plrdata" Height="180px" Width="924px" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowSorting="True">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="PlrName" HeaderText="姓名" SortExpression="PlrName" ReadOnly="True" />
                <asp:BoundField DataField="PlrClass" HeaderText="级别" SortExpression="PlrClass" ReadOnly="True" />
                <asp:BoundField DataField="PlrNum" HeaderText="号码" SortExpression="PlrNum" />
                <asp:BoundField DataField="Goal" HeaderText="进球" SortExpression="Goal" />
                <asp:BoundField DataField="Assis" HeaderText="助攻" SortExpression="Assis" />
                <asp:BoundField DataField="Tckl" HeaderText="抢断" SortExpression="Tckl" />
                <asp:BoundField DataField="Brkthr" HeaderText="突破" SortExpression="Brkthr" />
                <asp:BoundField DataField="TOC" HeaderText="上场时间" SortExpression="TOC" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
            &nbsp;<asp:Button ID="Button_backToChoose" runat="server" OnClick="Button_backToChoose_Click" Text="退回至选择页" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button_SearchPlr" runat="server" OnClick="Button_SearchPlr_Click" Text="Search" />
        <asp:SqlDataSource ID="SqlDataSource_plrdata" runat="server" ConnectionString="<%$ ConnectionStrings:FC_IMSConnectionString2 %>" SelectCommand="SELECT PlrData.* FROM PlrData" UpdateCommand="UPDATE PlrData SET Brkthr = @Brkthr, Tckl = @Tckl, Assis = @Assis, Goal = @Goal, TOC = @TOC WHERE (PlrName = @PlrName)" DeleteCommand="DELETE FROM PlrData" InsertCommand="INSERT INTO PlrData() VALUES ()">
            <UpdateParameters>
                <asp:Parameter Name="Brkthr" />
                <asp:Parameter Name="Tckl" />
                <asp:Parameter Name="Assis" />
                <asp:Parameter Name="Goal" />
                <asp:Parameter Name="TOC" />
                <asp:Parameter Name="PlrName" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </center>
    </div>
    </form>
</body>
</html>
