<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Registration.aspx.cs" Inherits="Login_Registration" %>
<%@ Register TagName="Captcha" TagPrefix="Controls" Src="~/Control/Captcha.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Registration</title>

   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
   <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>


</head>
<body>
     <form id="form1" runat="server">
 
      <div class="container">  
        
          <%-- Header --%>
         <div class="row">

              <div class ="col-lg-2"></div>
                   
                   <div class="col-lg-8" style ="background-color:#005992" >
                         <div style="height: 55px"> 
                             <img src="Images/exam.jpg" /><span style="color:white"> Login Registration</span>

                     </div>
              
                  </div>
                 <div class ="col-lg-2"></div>

             </div> <%--end of header row--%>                 <%-- Blank Div for space --%>
                 <div class="row">

                     <div class="col-lg-12" >
                       <div style="height: 41px">
                       </div>        
                    </div>
    
                 </div>

          <div class="row">
             <div class="col-md-2"></div>
               <div class="col-md-8">
                   <h2>Login Registration Form</h2>
                  <div class="col-md-2"></div>
        
                       

              <%-- Blank Div for space --%>
                 <div class="row">

                     <div class="col-lg-12" >
                       <div style="height: 41px">
                       </div>        
                    </div>
    
                 </div>

                  <div class="row">
                   <div class="form-group">

                              
                        <asp:Label ID="lblemail" runat="server" Text="Email Address"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" required="requied"></asp:TextBox> 

                        <asp:Label ID="lblPassword" runat="server" Text="Choose Password"></asp:Label>
                       <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password" required="requried"></asp:TextBox>

                        <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                       <asp:TextBox ID="txtConfirmPassword" runat="server" class="form-control" TextMode="Password" required="requried"></asp:TextBox>

                        <asp:Label ID="lblDisplayPasswordmissmatch" runat="server" Font-Names="Comic Sans MS"></asp:Label>
                       <br />

                        <asp:Label ID="lblPin" runat="server" Text="Enter Your Pin"></asp:Label>
                        <asp:TextBox ID="txtPin" runat="server" class="form-control" required="requried"></asp:TextBox>

                     
                  </div>

          <%--     Captcha Control--%>
               <div class="row">

                     <div class="col-lg-8" >
                       <div style="height: 20px">

                       </div>        
                    </div>
    
                 </div>

            
                           <Controls:Captcha ID="captcha" Message="Please enter text shown below:" runat="server"
                               OnSuccess="OnSuccess" OnFailure="OnFailure" BackgroundColor="#ffffff" />
                  
                   <br />
                       <asp:LinkButton ID="LBLogin" runat="server" OnClick="LBLogin_Click">If you have an account Login</asp:LinkButton>
                   <asp:HiddenField ID="HFLoginType" runat="server" />
                  
 </div>
              
</div> <%--end of form row--%>
           <%-- Blank Div for space --%>
                 <div class="row">

                     <div class="col-lg-12" >
                       <div style="height: 41px">
                          
                       </div>        
                    </div>
    
                 </div>

     </div>
    </div>
       
    </form>
</body>
</html>
