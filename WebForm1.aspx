<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="UCCFRFWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            
           
            <asp:FileUpload ID="FileUpload1" runat="server" />
           
            
           
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Enabled="False">Please Choose</asp:ListItem>
            <asp:ListItem>Section 1</asp:ListItem>
            <asp:ListItem>Section 2</asp:ListItem>
        </asp:DropDownList>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Height="87px" Width="353px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
