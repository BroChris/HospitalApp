<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>FRSC RS 2.1 | Error Form</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/flaticon.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/materialize.min.css" rel="stylesheet" />
    <link href="css/homepage.css" rel="stylesheet" />

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <h1>
                <asp:Literal ID="Literal1" runat="server" Text="Application Error"></asp:Literal>
            </h1>
            <p>
                <asp:Literal ID="LitErrorVal" runat="server" Text="This displays user application errors and system errors"></asp:Literal>
            </p>
        </div>
        <div class="col s12 m12">
            <a class="waves-effect waves-light btn left blue" href="LoginPage.aspx">Login Page &nbsp;<i class="fa fa-paper-plane fa-2x" aria-hidden="true"></i></a>
              <a class="waves-effect waves-light btn right green" href="index.html">Home Page &nbsp;<i class="fa fa-chevron-circle-right fa-2x" aria-hidden="true"></i></a>

         
        </div>

    </div>
</body>
</html>
