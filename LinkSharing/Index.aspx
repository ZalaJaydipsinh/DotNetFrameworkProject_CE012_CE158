<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LinkSharing.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #7DB46CFF;
            height:50px;
        }
        #logout{
            margin-top: 10px;
            
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #E7EBE0FF);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p class="auto-style1">
            <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
        </p>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Links.aspx">Links</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="Category.aspx">Insert Category</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Insert_Link.aspx">Insert Link</asp:HyperLink>
        </div>
        
    </form>
</body>
</html>
