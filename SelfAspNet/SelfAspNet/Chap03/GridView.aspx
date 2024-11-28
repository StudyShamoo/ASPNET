<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="SelfAspNet.Chap03.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="isbn" DataSourceID="sds" PageSize="3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="isbn" HeaderText="isbn" ReadOnly="True" SortExpression="isbn" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="publish" HeaderText="publish" SortExpression="publish" />
                    <asp:BoundField DataField="published" HeaderText="published" SortExpression="published" />
                    <asp:CheckBoxField DataField="odrom" HeaderText="odrom" SortExpression="odrom" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="sds" runat="server" ConnectionString="<%$ ConnectionStrings:SelfAsp %>" DeleteCommand="DELETE FROM [Book] WHERE [isbn] = @isbn" InsertCommand="INSERT INTO [Book] ([isbn], [title], [price], [publish], [published], [odrom]) VALUES (@isbn, @title, @price, @publish, @published, @odrom)" SelectCommand="SELECT [isbn], [title], [price], [publish], [published], [odrom] FROM [Book]" UpdateCommand="UPDATE [Book] SET [title] = @title, [price] = @price, [publish] = @publish, [published] = @published, [odrom] = @odrom WHERE [isbn] = @isbn">
                <DeleteParameters>
                    <asp:Parameter Name="isbn" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="isbn" Type="String" />
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="publish" Type="String" />
                    <asp:Parameter DbType="Date" Name="published" />
                    <asp:Parameter Name="odrom" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="price" Type="Int32" />
                    <asp:Parameter Name="publish" Type="String" />
                    <asp:Parameter DbType="Date" Name="published" />
                    <asp:Parameter Name="odrom" Type="Boolean" />
                    <asp:Parameter Name="isbn" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
