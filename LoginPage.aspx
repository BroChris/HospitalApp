<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
 <title>FRSC RS 2.1 | Login</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="css/flaticon.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/materialize.min.css" rel="stylesheet" />
    <link href="css/homepage.css" rel="stylesheet" />

     <script type = "text/javascript" >
        function disableBackButton()
        {
             window.history.forward();
        }
            setTimeout("disableBackButton()", 0);
  </script>
</head>

<body onload="disableBackButton()">
  <form id="form1" runat="server">
    <header>
        <nav>
            <div class="nav-wrapper">
                <div class="container">
                    <a href="#!" class="brand-logo">FRSC RS 2.1</a>
                    <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="fa fa-bars fa-2x" aria-hidden="true"></i></a>
                    <ul class="right hide-on-med-and-down">
                        <li><a href="index.html"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Home Page</a></li>
                        <li><a href="CreateAccount.aspx"><i class="fa fa-user-plus" aria-hidden="true"></i>&nbsp;Create account</a></li>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a href="index.html"><i class="fa fa-user-circle-o fa-2x" aria-hidden="true"></i>Home Page</a></li>
                        <li><a href="CreateAccount.aspx"><i class="fa fa-user-circle-o fa-2x" aria-hidden="true"></i>Create account</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <section>
            <div class="container">

                <div class="row">
                    <div class="login-container">
                        <div class="col s12 m7">
                            <h5>How to Sign in</h5>
                            <p>Enter your email address and password in the field provided.Forgotten your password? Click the button below to recover your old password</p>
                         <%--   <a class="waves-effect waves-light btn blue darken-1"><i class="fa fa-question-circle" aria-hidden="true">&nbsp;</i>RECOVER PASSWORD</a>--%>
                              <%--<asp:Button ID="btnRecoverPassword" runat="server" Text="RECOVER PASSWORD" CssClass="btn btn-info" OnClick="btnRecoverPassword_Click" /> --%>
                              <asp:LinkButton ID="LBRecoverPassword2" runat="server" Font-Bold="True" Font-Size="Large"  CssClass="btn btn-info" OnClick="LBRecoverPassword2_Click">RECOVER PASSWORD</asp:LinkButton>
                       
                             </div>
                        <div class="col s12 m5">
                            <div class="login-box z-depth-2 white">
                                <div class="loginpadding">
                                   <%-- <form class="col s12">--%>
                                        <div class="row">
                                            <h5 class="center-align">Sign in</h5>
                                            <div class="col s12 iconbox">
                                                <img src="images/loginicon.png" class="responsive-img login-icon" alt="login icon" />
                                            </div>
                                            <div class="input-field col s12">
                                               <%-- <input id="last_name" type="text" class="validate" required="required"/>--%>
                                                <label for="txtEmail">Email Address</label>
                                             <%--   <asp:Label ID="lblemail" runat="server" Text="Email Address"></asp:Label>--%>
                                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" required="required"></asp:TextBox>
                                            </div>
                                            <div class="input-field col s12">
                                               <%-- <input id="password" type="password" class="validate" required="required"/>--%>
                                                <label for="txtPassword">Password</label>
                                               
                                            <%--     <asp:Label ID="lblPassword" runat="server" Text="Password" for="txtPassword"></asp:Label>--%>
                                                <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" required="required"></asp:TextBox>

                                            </div>
                                            <div class="col s12 loginbtn-box">
                                             <%--   <a class="waves-effect waves-light btn blue darken-1 ">LOGIN</a>--%>
                                                 <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-info" OnClick="btnLogin_Click"  /> &nbsp;&nbsp;&nbsp;
                                                <br />
                                                 <asp:Label ID="lblDisplayLoginFail" runat="server" Font-Names="Comic Sans MS"></asp:Label>
                                                 <p>
                                                   <asp:LinkButton ID="LBRecoverPassword" runat="server" OnClick="LBRecoverPassword_Click" >If you have forgotten your password</asp:LinkButton>
                                                 </p>

                                            </div>
                                        </div>
                                   <%-- </form>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!--_____________________-->
    <footer class="page-footer" style="margin-top:50px;">
        <div class="container">
            <div class="row">
                <div class="divider"></div>
                <div class="col l4 s12">
                    <h5 class="footer-text">About FRSC Personnel Data Base</h5>
                    <p class="footer-text">This software project was designed and developed in collaboration with Lagos State Command of the of Federal  Safety Corps  RS 2.1 and teams of software engineers who believe in making a difference.
                    </p>
                </div>
                <div class="col l4 s12">
                   <h5 class="footer-text">Contact US</h5>
                        <p class="footer-text">Our support email address is chris.okaforce@gmail.com.</p>
                </div>
                <div class="col l4 s12" style="overflow: hidden;">
                     <h5 class="footer-text">Connect</h5>
                     <p class="footer-text">Our social media handle will be updated shortly.</p>
                    <br/>

                    <br/></div>
            </div>
        </div>
        <div class="footer-copyright" style="background-color: #005B9A;color:#fff">
            <div class="container">
                <div class="row">
                    <div class="c-padding">
                        <div class="col s12">
                            © 2017 All rights reserved.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $(".button-collapse").sideNav();
        })
    </script>
    </form>
</body>

</html>