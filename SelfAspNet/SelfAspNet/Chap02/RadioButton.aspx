<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButton.aspx.cs" Inherits="SelfAspNet.Chap02.RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            好きな食べ物は？

         
            <br />
            <asp:RadioButtonList ID="list" runat="server" AutoPostBack="True" OnSelectedIndexChanged="list_SelectedIndexChanged" RepeatDirection="Horizontal">
                <asp:ListItem Selected="True">お寿司</asp:ListItem>
                <asp:ListItem>焼肉</asp:ListItem>
                <asp:ListItem>鰻</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
