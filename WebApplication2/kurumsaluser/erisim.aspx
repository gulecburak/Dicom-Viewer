<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="erisim.aspx.cs" Inherits="WebApplication2.kurumsaluser.erisim" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="t1" runat="server"></asp:TextBox>

            <asp:Button ID="b1" runat="server" Text="Button" OnClick="b1_Click" />

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
