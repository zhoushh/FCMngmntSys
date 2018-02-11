<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="FCMngmntSys.pages.admin.Add" %>

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
        <asp:FormView ID="FormView_Add" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="AccID" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="174px" Width="471px">
            <EditItemTemplate>
                AccID:
                <asp:Label ID="AccIDLabel1" runat="server" Text='<%# Eval("AccID") %>' />
                <br />
                AccPwd:
                <asp:TextBox ID="AccPwdTextBox" runat="server" Text='<%# Bind("AccPwd") %>' />
                <br />
                AccType:
                <asp:TextBox ID="AccTypeTextBox" runat="server" Text='<%# Bind("AccType") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                AccID:
                <asp:TextBox ID="AccIDTextBox" runat="server" Text='<%# Bind("AccID") %>' />
                <br />
                AccPwd:
                <asp:TextBox ID="AccPwdTextBox" runat="server" Text='<%# Bind("AccPwd") %>' />
                <br />
                AccType:
                <asp:TextBox ID="AccTypeTextBox" runat="server" Text='<%# Bind("AccType") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" OnClick="InsertButton_Click" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                AccID:
                <asp:Label ID="AccIDLabel" runat="server" Text='<%# Eval("AccID") %>' />
                <br />
                AccPwd:
                <asp:Label ID="AccPwdLabel" runat="server" Text='<%# Bind("AccPwd") %>' />
                <br />
                AccType:
                <asp:Label ID="AccTypeLabel" runat="server" Text='<%# Bind("AccType") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FC_IMSConnectionString2 %>" InsertCommand="INSERT INTO Account(AccID, AccType, AccPwd) VALUES (@AccID, @AccType, @AccPwd)" SelectCommand="SELECT Account.* FROM Account">
            <InsertParameters>
                <asp:Parameter Name="AccID" />
                <asp:Parameter Name="AccType" />
                <asp:Parameter Name="AccPwd" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button_BackToAccList" runat="server" OnClick="Button_BackToAccList_Click" Text="返回" />
    </center>
    </div>
    </form>
</body>
</html>
