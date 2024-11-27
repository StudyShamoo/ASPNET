<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload2.aspx.cs" Inherits="SelfAspNet.Chap02.FileUpload2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            アップロードファイル（プレーンテキストのみ）：<br />
            <asp:FileUpload ID="upload_kadai" runat="server" />
            <br />
            <asp:Button ID="btnUpload_kadai" runat="server" OnClick="btnUpload_Click" Text="アップロード" />
            <br />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
