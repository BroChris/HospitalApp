<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientsDoctorsAppointment.aspx.cs" Inherits="PatientsDoctorsAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patients | Pateints Booking Registration</title>
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
        $("#txtDate").datepicker({
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
               <div class="form-group">
                   <br />
                      <h2 class="page-header" style="color:orange">Patients Doctors Appointment</h2>
                              
                         <asp:Label ID="lblPatientID" runat="server" Text="PatientID"></asp:Label>
                         <asp:TextBox ID="txtPatientID" runat="server" class="form-control" required="requied" ReadOnly="True"></asp:TextBox> 


                         <asp:Label ID="lblTelephone" runat="server" Text="Contact Telephone"></asp:Label>
                         <asp:TextBox ID="txtTelephone" runat="server" class="form-control" required="requied" ValidationGroup="Search" placeholder="Enter Telephone to Search"></asp:TextBox>  
                                        
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox ID="txtLastName" runat="server" class="form-control" required="requied" ValidationGroup="Search"></asp:TextBox> 
                        
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox ID="txtFirstName" runat="server" class="form-control" required="requied"></asp:TextBox> 

                        <asp:Label ID="lblMiddleName" runat="server" Text="Middle Name"></asp:Label>
                        <asp:TextBox ID="txtMiddleName" runat="server" class="form-control" required="requied"></asp:TextBox>
                        
                        <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" class="form-control" required="requied"></asp:TextBox> 
                        
                      
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" required="requied"></asp:TextBox> 

                        <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                        <asp:TextBox ID="txtDate" runat="server" class="form-control" required="requied" ></asp:TextBox> 

                         <asp:Label ID="lblDoctorToSee" runat="server" Text="Doctor Patient Wants to see"></asp:Label>
                        <asp:TextBox ID="txtDoctorToSee" runat="server" class="form-control" required="requied"></asp:TextBox> 
                         <br />

                          <div class="btn-toolbar">
                            <asp:LinkButton ID="LBSearch" runat="server"  CssClass="btn btn-primary " ValidationGroup="Search" OnClick="LBSearch_Click">Search</asp:LinkButton>
                            <asp:Button ID="txtBookPatient" runat="server" Text="Book Patient"  CssClass=" btn btn-primary" OnClick="txtBookPatient_Click"/>    
                          </div>
                                  
                                             
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
