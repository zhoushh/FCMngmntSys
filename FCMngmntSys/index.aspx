<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FCMngmntSys.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>XXX足球俱乐部管理系统</title>
    <link href="CSS/IndexStyle.css" rel="stylesheet" type="text/css" />
    <script>
        function clearInput() {
            var sum = 0;
            var t = document.getElementsByClassName("del");
            for (var i = 0; i < t.length; i++)
                if (t[i].type == 'text') {
                    ++sum;
                    t[i].value = "";
                }
        }        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="mainBox" align="center">
                <table id="loginBox" align="center" width="70%" height="80%" border="0">
            <tbody>
                <tr>
                    <th colspan="2" scope="row" align="center" width="40%">登录<br /><hr></th>
                </tr>
                <tr>
                    <th scope="row" width="40%">职工号</th>
                    <td><asp:TextBox runat="server" ID="workNum" size="30%" class="del" MaxLength="7" /></td>
                </tr>
                <tr>
                    <th scope="row" width="40%">密码</th>
                    <td><asp:TextBox runat="server" ID="password" size="30%" class="del" MaxLength="26" TextMode="Password" /></td>
                </tr>
                <tr>
                    <th scope="row" width="40%">登陆类型</th>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList_chooseType" runat="server" RepeatDirection="Horizontal" Width="293px">
                            <asp:ListItem Value="Plr">球员</asp:ListItem>
                            <asp:ListItem Value="Coach">教练员</asp:ListItem>
                            <asp:ListItem Value="Stuff">工作人员</asp:ListItem>
                            <asp:ListItem Value="Admin">管理员</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><center><a href="pages/manager/func_choice.html"><asp:Button class="buttons" runat="server" Text="登录" ID="Button_login" OnClick="Button_login_Click" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" class="buttons" onclick="clearInput()" /></center></td>
                </tr>
            </tbody>
        </table>    
    </div>
    </form>
    <div id="bottom">
        <pre>信管1401   周仕豪   0121403490117</pre>
    </div>
</body>
</html>
