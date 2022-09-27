<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="LinkSharing.Links" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <title>Links</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid mr-2 mt-3">
            <asp:GridView class="table table-bordered table-condensed table-responsive table-hover " ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceLinks" AllowSorting="True" EnableTheming="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:TemplateField HeaderText="Link" SortExpression="Link">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Link") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="Label1" runat="server"  Text='<%# Bind("Name") %>' Target="_blank" NavigateUrl='<%# Bind("Link") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit" SortExpression="Edit">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Link") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Bind("Id") %>' CommandName="ThisBtnClick" Text="Edit" OnClick="MyButtonClick" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:CheckBoxField DataField="IsPublic" HeaderText="IsPublic" SortExpression="IsPublic" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceLinks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Urls.Id, Category.Name AS Category, Urls.Name AS Name, Urls.Link, Urls.Description, Urls.IsPublic FROM Urls INNER JOIN Category ON Urls.Cid = Category.Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="Link" />
                    <asp:Parameter Name="Description" />
                    <asp:Parameter Name="IsPublic" />
                    <asp:Parameter Name="Id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
