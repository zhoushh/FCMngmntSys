<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPlr.aspx.cs" Inherits="FCMngmntSys.pages.admin.SearchPlr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>通过姓名查找</title>
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
    <style type="text/css">
        .auto-style1 {
            width: 239px;
        }
        #searchBox {
            width: 44%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table id="searchBox" align="center" height="80%" border="0">
        <tbody>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox_search" runat="server" Width="220px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button_searchByName" runat="server" Text="按姓名查找" OnClick="Button_searchByName_Click" />
                </td>
            </tr>
        </tbody>
    </table>

    <table id="searchResult" align="center" width="80%">
        <tr>
            <td>ID</td><td>姓名</td><td>出生年月日</td><td>出生地</td><td>入队日期</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label_PID" runat="server"></asp:Label>
            </td><td>
                <asp:Label ID="Label_PN" runat="server"></asp:Label>
            </td><td>
                <asp:Label ID="Label_PBD" runat="server"></asp:Label>
            </td><td>
                <asp:Label ID="Label_PH" runat="server"></asp:Label>
            </td><td>
                <asp:Label ID="Label_PDIT" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
