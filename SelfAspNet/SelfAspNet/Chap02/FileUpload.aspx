<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="SelfAspNet.Chap02.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            アップロードファイル：<br />
            <asp:FileUpload ID="upload" runat="server" />
            <br />
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="アップロード" />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
