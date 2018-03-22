<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PatientHistory.aspx.cs" Inherits="PatientHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  
   <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
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
                      <h2 class="page-header" style="color:orange">Patients Medical History</h2>
                         <div id="DivPatientHistory" class="form-group" style="height:500px; border:1px solid grey; padding-left:20px; padding-right:20px" runat="server">


                         </div><br />   
                        
                          <div class="btn-toolbar">
                            <asp:LinkButton ID="LBSearch" runat="server"  CssClass="btn btn-primary  " ValidationGroup="Search">Search</asp:LinkButton>
                            <asp:Button ID="txtBookPatient" runat="server" Text="Book Patient"  CssClass=" btn btn-primary"/>    
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
