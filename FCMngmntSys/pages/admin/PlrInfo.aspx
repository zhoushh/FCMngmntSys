<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlrInfo.aspx.cs" Inherits="FCMngmntSys.pages.admin.PlrInfo" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="814px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="AccID" HeaderText="ID" SortExpression="AccID" ReadOnly="True" />
                <asp:BoundField DataField="PlrName" HeaderText="姓名" SortExpression="PlrName" />
                <asp:BoundField DataField="PlrBrthDate" HeaderText="出生日期" SortExpression="PlrBrthDate" DataFormatString="{0:d}" />
                <asp:BoundField DataField="PlrHmtwn" HeaderText="来源地" SortExpression="PlrHmtwn" />
                <asp:BoundField DataField="PlrDateInTeam" HeaderText="入队日期" SortExpression="PlrDateInTeam" DataFormatString="{0:d}" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FC_IMSConnectionString2 %>" SelectCommand="SELECT * FROM [PlrInfo]" UpdateCommand="UPDATE PlrInfo SET PlrName = @PlrName, PlrBrthDate = @PlrBrthDate, PlrHmtwn = @PlrHmtwn WHERE (AccID = @AccID)">
            <UpdateParameters>
                <asp:Parameter Name="PlrName" />
                <asp:Parameter Name="PlrBrthDate" />
                <asp:Parameter Name="PlrHmtwn" />
                <asp:Parameter Name="AccID" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button_BackToChoice" runat="server" OnClick="Button_BackToChoice_Click" Text="退回至选择页" />
        <asp:LinkButton ID="LinkButton_search" runat="server" OnClick="LinkButton_search_Click">查找</asp:LinkButton>
    </center>
    </div>
    </form>
</body>
</html>
