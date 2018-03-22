<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Diagnosis.aspx.cs" Inherits="Diagnosis" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Exams Question</title>
   
    <meta http-equiv="Content Type" content="text/html; charset=ISO-8859-1" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">

    
    
  
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <%--  Date JQuery--%>
   <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
   <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css"/>
   
<script>
    $( function() {
        $("#txtNextAppoint").datepicker({
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




  
   <script src="tinymce_4.2.3/tinymce/js/tinymce/tinymce.min.js"></script>
   <script type="text/javascript">

      tinymce.init({
          selector: "textarea",
          theme: "modern",
          plugins: [
              "advlist autolink lists link image charmap print preview hr anchor pagebreak",
              "searchreplace wordcount visualblocks visualchars code fullscreen",
              "insertdatetime media nonbreaking save table contextmenu directionality",
              "emoticons template paste textcolor colorpicker textpattern imagetools"
          ],
          toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
          toolbar2: "print| forecolor backcolor",
          image_advtab: true,
          templates: [
              { title: 'Test template 1', content: 'Test 1' },
              { title: 'Test template 2', content: 'Test 2' }
          ]
      });
</script>


</head>
<body>
    <form id="form1" runat="server">
  <div class="container">  
        
          <%-- Header --%>
         <div class="row">

              <div class ="col-lg-2"></div>
                   
                   <div class="col-lg-8" style ="background-color:#005992" >
                         <div style="height: 55px"> 
                             <img src="Images/exam.jpg" /> Bolaris Technoloogies

                     </div>
              
                  </div>

             </div> <%--end of header row--%>
               <%-- Blank Div for space --%>
                 <div class="row">

                     <div class="col-lg-12" >
                       <div style="height: 20px;">
                       </div>        
                    </div>
    
                 </div>


      <div class="row">
             <div class="col-md-3"></div>
               <div class="col-md-6">
                   <h2>Diagnosis Detail and Prescription</h2>


              </div>
               

            <div class="col-md-3"></div>
           </div>

       <div class="row">
           <div class="col-md-3"></div>
               <div class="col-md-6">

                   <div class="form-group">


                       <asp:Label ID="lblQuestion" runat="server" Text="Doctors Diagnosis" ForeColor="Red"></asp:Label>
                       <asp:TextBox ID="txtDiagnosis" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox><br />
        
                       <asp:Label ID="lblPrescription" runat="server" Text=" Doctors Prescription" ForeColor="Red"></asp:Label>
                       <asp:TextBox ID="txtPrescription" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox><br />

                        <asp:Label ID="lblDate" runat="server" Text="Next Appointment" ForeColor="Red"></asp:Label>
                        <asp:TextBox ID="txtNextAppoint" runat="server" class="form-control" required="requied" placeholder="Click on the box for a calender menu"></asp:TextBox> 

                      

                       <p></p>
                     
                     <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click"/>

                  </div>


                </div>
               </div>

        <%-- Blank Div for space --%>
                 <div class="row">

                     <div class="col-lg-12" >
                       <div style="height: 50px">
                       </div>        
                    </div>
    
                 </div>

       <footer>
            <div class="row">

                <div class ="col-lg-2"></div>
                <div class="col-lg-8" style ="background-color:#005992;color:white">
                    <p>Copyright &copy; Silvernet Global Services 2015</p>
                </div>
            </div>
        </footer>

    
      
      
      
       </div> <%--End of Container DIV--%>
      </form>


</body>
</html>
