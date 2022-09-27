<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LinkSharing.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body{
            background-color: #ABD6DFFF;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 639px;
            padding: 4px;
        }
        .auto-style3 {
            width: 178px;
            padding: 4px;
        }
        .auto-style4 {
            text-align: right;
            height: 29px;
            width: 639px;
            padding: 4px;
        }
        .auto-style5 {
            width: 178px;
            height: 29px;
            padding: 4px;
        }
        .auto-style6 {
            height: 29px;
            padding: 4px;
        }
        .auto-style7 {
            border-style: solid;
            border-color: inherit;
            border-width: medium;
            text-decoration: underline;
            text-align: center;
            margin-left: 510px;
            width: 329px;
            padding: 15px;
            font-size: x-large;
        }
        #Button_login{
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #E7EBE0FF;
        }
        #Button_login:hover {
            box-shadow: 0 5px 15px 0 rgba(0,0,255,0.6);
        }
        .auto-style8 {
            text-align: center;
        }
       
        .auto-style9 {
            font-size: large;
        }
       
    </style>
</head>
<body class="body">
    <div class="auto-style8">
        <br /><br />
    </div>
    <form id="form1" runat="server">
        <br /><br />
        <p class="auto-style7"><strong>LOGIN</strong></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Email Id :"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Lu_email" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Lu_email" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <strong>
                    <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Lu_pswd" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <!---<td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lu_pswd" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>-->
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Button_login" runat="server" OnClick="Button_login_Click" Text="Login" />
                </td>
                <td>
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx" CssClass="auto-style9">New User</asp:HyperLink>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
