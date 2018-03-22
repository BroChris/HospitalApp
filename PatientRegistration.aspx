<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientRegistration.aspx.cs" Inherits="PatientRegistration" %>
<%@ Register TagName="Captcha" TagPrefix="Controls" Src="~/Control/Captcha.ascx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patients | Pateints Registration</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
   <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

 <%--  Date JQuery--%>
   <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"/>


<script>
    $( function() {
        $("#txtDateofBirth").datepicker({
            dateFormat: 'yy-mm-dd',
            changeYear: true,
            yearRange: "-70:+0"
        });
        
      } );
  </script>

 <style type="text/css">
.ui-datepicker {
    background: cornflowerblue;
    border: 1px solid #555;
    color:#000000;
}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">  
           <div class="row">

              <div class ="col-lg-2"></div>
                   
                   <div class="col-lg-8" style ="background-color:#005992" >
                         <div style="height: 55px"> 
                            <img src="Images/exam.jpg" /> <span style="color:white"> Bolaris Technoloogies</span>
                             
                     </div>
                       
                  </div>
                <div class ="col-lg-2"></div>

             </div> <%--end of header row--%><%-- Blank Div for space --%>
         
               
            <div class="row">
             <div class="col-md-2"></div>
             <div class="col-md-8">  
                 <br />
                 <br />
                  <div style="border-style: solid; height: 250px; width:220px" > 
                       <%--  <img src="Images/individualStudent.jpg" />--%>
                       <br />
                      <asp:Image ID="picPassport" runat="server"  ImageUrl="Images/222AAPicture.jpg" CssClass="img-responsive center-block"/>
                     
                  </div>
                   <br />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server"  />
                    <asp:LinkButton ID="LinkBUploadPictures" runat="server" CssClass="btn btn-primary" OnClick="LinkBUploadPictures_Click" >Upload Picture</asp:LinkButton>
                 
                    
                 
             </div>
             <div class="col-md-2"></div>
             </div>
           
          
             <div class="row">
              <div class="col-md-2"></div>
                  <div class="col-md-8">
               <div class="form-group">
                   <br />
                      <h2 class="page-header" style="color:orange">Patient Registration</h2>
                              
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control" required="requied"></asp:TextBox> 

                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="txtLastName" runat="server" class="form-control" required="requied"></asp:TextBox> 
                        
                        <asp:Label ID="lblMiddleName" runat="server" Text="Middle Name"></asp:Label>
                        <asp:TextBox ID="txtMiddleName" runat="server" class="form-control" required="requied"></asp:TextBox>
                        
                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" class="form-control" required="requied"></asp:TextBox> 
                        
                        <asp:Label ID="lblTelephone" runat="server" Text="Contact Telephone"></asp:Label>
                        <asp:TextBox ID="txtTelephone" runat="server" class="form-control" required="requied"></asp:TextBox> 
                   
                         <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                        <asp:TextBox ID="txtGender" runat="server" class="form-control" required="requied"></asp:TextBox>  
                     
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" required="requied"></asp:TextBox> 

                        <asp:Label ID="lblDate" runat="server" Text="Date of Birth"></asp:Label>
                        <asp:TextBox ID="txtDateofBirth" runat="server" class="form-control" required="requied" placeholder="Click on the box for a calender menu"></asp:TextBox> 

                        <asp:Label ID="lblNextofKin" runat="server" Text="Name Next of Kin"></asp:Label>
                        <asp:TextBox ID="txtNextofKin" runat="server" class="form-control" required="requied"></asp:TextBox> 

                        <asp:Label ID="lblNextofKinContact" runat="server" Text="Next of Kin Contact"></asp:Label>
                        <asp:TextBox ID="txtNextofKinContact" runat="server" class="form-control" required="requied"></asp:TextBox> 

                      
                        
                     
                  </div>
                 </div>
                 <div class="col-md-2"></div>

               </div>

         <%--     Captcha Control--%>
               <div class="row">

                     <div class="col-lg-8" >
                       <div style="height: 20px">

                       </div>        
                    </div>
    
                 </div>


                <div class="row">
                    <div class="col-md-2"></div>
                      <div class="col-md-8">
                   <Controls:Captcha ID="captcha" Message="Please enter text shown below:" runat="server"
                               OnSuccess="OnSuccess" OnFailure="OnFailure" BackgroundColor="#ffffff" />
                  
                   <br />
                          <%-- <asp:LinkButton ID="LBLogin" runat="server" OnClick="LBLogin_Click">If you have an account Login</asp:LinkButton>--%>
                   <asp:HiddenField ID="HFLoginType" runat="server" />
                   </div>
                     <div class="col-md-2"></div>
                </div>

        <%-- Blank Div for space --%>
                 <div class="row">

                     <div class="col-lg-12" >
                       <div style="height: 41px">
                          
                       </div>        
                    </div>
    
                 </div>
         
    </div>
    </form>
</body>
</html>
