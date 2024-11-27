<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Button.aspx.cs" Inherits="SelfAspNet.Chap02.Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        function ImgBtnConf() {
            return confirm("イメージボタンだよん");
        }
        function LiBtnConf() {
            return confirm("リンクボタンだよん");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" Text="普通のボタンコントロールだよ" OnClick="Button1_Click" OnClientClick="return confirm(&quot;Buttonコントロールが動いたよん&quot;);" />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Chap02/neko.png" OnClientClick="return ImgBtnConf();" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return LiBtnConf();">LinkButtonってやつだよ</asp:LinkButton>

        </div>
    </form>
</body>
</html>
