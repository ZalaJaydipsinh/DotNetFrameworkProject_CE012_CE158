<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="LinkSharing.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="	https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <title></title>
    <style type="text/css">
        .body{
            background-color: floralwhite;
        }
        #logout{
            margin-top: 10px;
            padding: 5px;
            font-size: 17px;
            border: 1px solid #008CBA;
            border-radius: 8px;
            background-color: #d3d2cc;
            text-decoration:none;
        }
        .protitle{
            font-size: xx-large;
            font-family:'Lucida Handwriting';
        }
        .nav-item{
            font-size:large;

        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
         <div>
            <br />
            <br />
            <nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
      <div class="protitle"><em><strong>LinkShare</strong></em>&nbsp;&nbsp;</div>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="Index.aspx">Home</a>
        </li>&nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link active" href="About.aspx">About Us</a>
        </li>&nbsp;&nbsp;
        <li class="nav-item">
          <a class="nav-link" href="Contact.aspx">Contact</a>
        </li>
      </ul>
    </div>
      <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </div>
</nav>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
