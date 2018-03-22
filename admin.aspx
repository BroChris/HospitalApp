<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> Control Panel</title>
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

 
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
   <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   
        <%-- Header --%>
         <div class="row">

             <%-- <div class ="col-lg-2"></div>
                   --%>
                   <div class="col-lg-12" style ="background-color:#005992" >
                         <div style="height: 55px"> 
                            <img src="Images/exam.jpg" /> <span style="color:white"> Administration</span>

                     </div>
              
                  </div>
              </div>
         <div>

               <div class="col-lg-2" style ="background-color:white; border-right:thin "><h3>Control Panel</h3>
                        <div style="height: 140px">
                              <asp:LinkButton ID="LinkBPatientHistory" runat="server">Patient History</asp:LinkButton>
                             <br />
                             <br />
                              <asp:LinkButton ID="LinkBPatientBooking" runat="server" >Patient Booking</asp:LinkButton>
                            <br />
                             <br />
                              <asp:LinkButton ID="LinkBDoctorsListing" runat="server">View Doctors </asp:LinkButton>
                             <br />
                             <br />
                              <asp:LinkButton ID="LinkBLogOut" runat="server">Log Out</asp:LinkButton>
                             <br />
                              <asp:HiddenField ID="HFPin" runat="server" />

                        </div>
                      </div>
    </div>
    </form>
</body>
</html>
