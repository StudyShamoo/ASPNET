<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBox.aspx.cs" Inherits="SelfAspNet.Chap02.CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            好きな食べ物は？<br />
            <asp:CheckBoxList ID="CheckList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckList_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem>お寿司</asp:ListItem>
                <asp:ListItem>焼肉</asp:ListItem>
                <asp:ListItem>鰻</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Label ID="lblCheckResult" runat="server"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
