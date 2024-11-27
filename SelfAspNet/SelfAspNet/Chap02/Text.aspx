<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Text.aspx.cs" Inherits="SelfAspNet.Chap02.Text" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblText" runat="server" Text="Labelコントロール"></asp:Label>
            <br />
            <asp:Literal ID="ltrText" runat="server" Text="Literalコントロール"></asp:Literal>
            <br />
            <br />
            <asp:Literal ID="ltr" runat="server" Mode="Encode" Text="&lt;script&gt;alert('脆弱性！')&lt;/script&gt;"></asp:Literal>
        </div>
    </form>
</body>
</html>
