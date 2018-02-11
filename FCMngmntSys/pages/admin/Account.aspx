<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="FCMngmntSys.pages.admin.Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource_Account" runat="server" ConnectionString="<%$ ConnectionStrings:FC_IMSConnectionString2 %>" DeleteCommand="DELETE FROM Account WHERE (AccID = @AccID)" InsertCommand="INSERT INTO Account(AccID, AccPwd, AccType) VALUES (@AccID, @AccPwd, @AccType)" SelectCommand="SELECT Account.* FROM Account ORDER BY AccType ASC">
            <DeleteParameters>
                <asp:Parameter Name="AccID" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="AccID" />
                <asp:Parameter Name="AccPwd" />
                <asp:Parameter Name="AccType" />
            </InsertParameters>
        </asp:SqlDataSource>
        <center>
            <asp:Button ID="Button_add" runat="server" Text="添加" OnClick="Button_add_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Button_BackToChoiceForAcc" runat="server" OnClick="Button_BackToChoiceForAcc_Click" Text="退回至选择页" />
            <br />
            <br />
            <asp:GridView ID="GridView_Account" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AccID" DataSourceID="SqlDataSource_Account" ForeColor="#333333" GridLines="None" Height="138px" Width="783px" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="AccID" HeaderText="职工号" ReadOnly="True" SortExpression="AccID" />
                    <asp:BoundField DataField="AccPwd" HeaderText="密码" SortExpression="AccPwd" Visible="False" />
                    <asp:BoundField DataField="AccType" HeaderText="账户类型" SortExpression="AccType" />
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
        </center>
        <br />
    
    </div>
    </form>
</body>
</html>
