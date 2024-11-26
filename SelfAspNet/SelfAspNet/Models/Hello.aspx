<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hello.aspx.cs" Inherits="SelfAspNet.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="送信" />
            <br />
            <asp:Label ID="lblGreet" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
