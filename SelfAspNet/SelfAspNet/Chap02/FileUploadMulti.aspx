<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUploadMulti.aspx.cs" Inherits="SelfAspNet.Chap02.FileUploadMulti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        アップロードファイル（複数可能）：<br />
        <asp:FileUpload ID="upload2" runat="server" AllowMultiple="True" />
        <br />
        <asp:Button ID="btnUpload2" runat="server" OnClick="btnUpload2_Click" Text="アップロード" />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </form>
</body>
</html>
