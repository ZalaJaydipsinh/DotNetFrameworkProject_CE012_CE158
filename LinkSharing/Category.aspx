﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs"
Inherits="LinkSharing.Category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <title>Insert Category</title>
  </head>
  <body>
    <div class="container mt-5">
      <form autocomplete="off" id="form1" runat="server">
        <div class="card border-primary">
          <h5 class="card-header">Insert Category or Sub-Category</h5>
          <div class="card-body">
            <div class="input-group mb-3">
              <span class="input-group-text">Category Name:</span>
              <asp:TextBox
                ID="txt_cname"
                class="form-control"
                runat="server"
              ></asp:TextBox>
              <asp:Button
                ID="btn_submit"
                class="btn btn-outline-secondary"
                runat="server"
                Text="Insert"
                OnClick="btn_submit_Click"
              />
              <asp:RegularExpressionValidator
                ID="RegularExpressionValidatorCname"
                runat="server"
                ErrorMessage="Category name can not contain special text and have to be at least 2 char long"
                ValidationExpression="^[a-zA-Z- ]{3,50}$"
                ControlToValidate="txt_cname"
                ForeColor="Red"
              ></asp:RegularExpressionValidator>
            </div>
          </div>
        </div>

        <div class="card border-primary mt-3 table-responsive">
          <h5 class="card-header">List of Category</h5>
          <div class="card-body">
            <asp:GridView
              ID="gv_category"
              class="table table-bordered table-condensed table-responsive table-hover "
              runat="server"
              AutoGenerateColumns="False"
              AutoGenerateDeleteButton="True"
              AutoGenerateEditButton="True"
              DataSourceID="SqlDataSourceCategory"
              AllowPaging="True"
              DataKeyNames="Id"
            >
              <Columns>
                <asp:BoundField
                  DataField="Id"
                  HeaderText="Id"
                  SortExpression="Id"
                  InsertVisible="False"
                  ReadOnly="True"
                />
                <asp:BoundField
                  DataField="Uid"
                  HeaderText="Uid"
                  SortExpression="Uid"
                />
                <asp:BoundField
                  DataField="Name"
                  HeaderText="Name"
                  SortExpression="Name"
                />
              </Columns>
            </asp:GridView>
            <asp:SqlDataSource
              ID="SqlDataSourceCategory"
              runat="server"
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
              SelectCommand="SELECT * FROM [Category]"
              DeleteCommand="Delete from [Category] where [Id]=@Id"
              UpdateCommand="Update [Category] set [Name]=@Name where [Id]=@Id"
            ></asp:SqlDataSource>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
