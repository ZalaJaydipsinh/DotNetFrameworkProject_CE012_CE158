<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Public_Links.aspx.cs" Inherits="LinkSharing.Public_Links" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <title>Public Links</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid mr-2 mt-3">
            <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="Label1" runat="server" Text='<%# Bind("Name") %>' Target="_blank" NavigateUrl='<%# Bind("Link") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Link" HeaderText="Link" SortExpression="Link" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:CheckBoxField DataField="IsPublic" HeaderText="IsPublic" SortExpression="IsPublic" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Urls.Id, Category.Name AS Category, Urls.Name AS Name, Urls.Link, Urls.Description, Urls.IsPublic FROM Urls INNER JOIN Category ON Urls.Cid = Category.Id where IsPublic=1"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
