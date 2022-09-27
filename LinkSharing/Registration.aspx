<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LinkSharing.Registration" %>

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
            height: 35px;
        }
        .auto-style3 {
            height: 35px;
            text-align: right;
            width: 609px;
        }
        .auto-style4 {
            height: 35px;
            width: 191px;
        }
        .auto-style5 {
            height: 35px;
            text-align: left;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style8 {
            border-style: solid;
            border-color: inherit;
            border-width: medium;
            text-decoration: underline;
            text-align: center;
            margin-left: 460px;
            width: 350px;
            padding: 15px;
            font-size: x-large;
        }
        #Moveregister{
            margin-top: 10px;
            
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #E7EBE0FF);
        }
        #Movelogin{
            margin-right: 100px;
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #E7EBE0FF;
        }
        #Button1{
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #E7EBE0FF;
        }
        #Button1:hover {
            box-shadow: 0 5px 15px 0 rgba(0,0,255,0.6);
        }
        #Reset1{
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #E7EBE0FF;
        }
        #Reset1:hover {
            box-shadow: 0 5px 15px 0 rgba(0,0,255,0.6);
        }
        .auto-style9 {
            font-size: large;
        }
    </style>
</head>
<body class="body">
    <div class="auto-style7">
        <br /><br />
    </div>
    <form id="form1" runat="server">
        <br /><br />
        <p class="auto-style8"><strong>REGISTRATION</strong></p>
        <div>
            <table cellpadding="2" cellspacing="1" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="u_name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="u_name" ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Email Id :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="u_email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="u_email" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Contact No :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="u_contact" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="u_contact" ErrorMessage="Contact No. is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="u_contact" ErrorMessage="Must be 10 digit." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Text="Password :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="u_pswd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="u_pswd" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:TextBox ID="u_cpswd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="u_cpswd" ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="u_pswd" ControlToValidate="u_cpswd" ErrorMessage="Passwords not matching." ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SignUP" />
&nbsp; <span class="auto-style6"><strong>|</strong></span>&nbsp;
                        <input id="Reset1" type="reset" value="Reset" /></td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style9" ForeColor="Blue" NavigateUrl="~/Login.aspx">Already a User</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
