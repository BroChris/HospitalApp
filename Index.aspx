<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Hospital Information | HomePage</title>
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>



</head>
<body>
    <form id="form1" >
        <div class="container">
            <%--  Boostrap Row1 --%>
            <div class="row">
                <%-- Header --%>
                <div class="col-lg-12" style="background-color:#005992;color:white">
                    <div style="height: 55px">
                        <img src="Images/exam.jpg" /><span style="color:white"> Bolaris Technoloogies</span>  
                        <!-- Menu -->
                        <ul class="nav nav-pills navbar-right">
                            <li ><a href="#" style="color:black"><span class="glyphicon glyphicon-home" style="color:black"></span>Home</a></li>
                            <li> <a href="#" style="color:black"><span class="glyphicon glyphicon-inbox " style="color:black"></span> Contact Us </a></li>

                        </ul>
                   </div>
                     
                </div>
               
                <br />
                <h2 class="page-header" style="color:orange">Hospital Information App </h2>

            </div>

            <%--  Boostrap Row1 --%>


            <!-- Slider Carousel -->
            <div id="myCarousel" class="carousel slide" data-interval="5000">

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>


                <!-- Slider images -->
                <div class="carousel-inner">
                    <div class="item active">

                        <img src="Images/Hospital-Management-System.jpg" />
                    </div>
                    <div class="item">

                        <img src="Images/Dotors-tablets.jpg" />
                    </div>
                    <div class="item">

                        <img src="Images/revenue-growth.jpg" />
                    </div>

                    <div class="item">

                        <img src="Images/Banners_hospital.jpg" />

                    </div>


                </div>

                <!-- the dot dot dot control -->
                <a class="left carousel-control">...</a>
                <a class="right carousel-control">...</a>

                <!-- Controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>

                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
                
            </div>

            <!-- Portfolio Heading -->
            <!-- Marketing Icons Section -->
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header" style="color:royalblue ">
                       Welcome to Bolaris Hospital Information System
                    </h3>
                    <span>
                        The Hospital information systems delivers better patient care by consolidating patient data on a central secured database and can be 
                        accessed on multiple platform and form factor very fast, removing delays in finding patient files, prevents revenue leakages, improves cost
                    </span>
                </div>

                <%-- Blank Div for space --%>
                <div class="row">

                    <div class="col-lg-12">
                        <div style="height: 10px">
                        </div>
                    </div>

                </div>

                <div class="col-md-4">
                    <div class="panel panel-default panel-primary">
                        <div class="panel-heading">

                            <h4><i class="fa fa-circle-o-notch fa-spin"></i> Patients Information</h4>

                        </div>
                        <div class="panel-body">
                            <img src="Images/patients.jpg" style="float:left; margin:10px;" />
                            <p>A registration page is created and will be used keep patient information; this can be updated when patient information’s changes. This information will be available to the doctors.
                               
                             </p>
                            <p></p>
                            <a href="PatientRegistration.aspx" class="btn btn-info"> Register</a> &nbsp;
                            
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="panel panel-default panel-danger">
                        <div class="panel-heading">
                            <h4><i class="fa fa-refresh fa-spin"></i> Doctors Information</h4>
                        </div>
                        <div class="panel-body">
                            <img src="Images/doctors.jpg" style="float:left; margin:10px;" />
                            <p>All doctors’ information and specialties in the hospital will be registered as well as their call schedules and timeout. Unauthorized doctors will not have access to the patient files. Doctors shall access patient information using smart devices.
                            </p>
                            <a href="DoctorsRegistration.aspx" class="btn btn-info"> Login</a> &nbsp;
                           


                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="panel panel-default panel-info">
                        <div class="panel-heading">
                            <h4><i class="fa fa-cog fa-spin"></i> Administrative Information</h4>
                        </div>
                        <div class="panel-body">
                            <img src="Images/administrative.jpg" style="float:left; margin:10px;" />
                            <p>Adminsitative information will be captured by the system. This will include patients billing and payment information, drugs and hospital inventory. Levels of authorisation determines what personnel can access  </p>
                            <a href="login.aspx" class="btn btn-info"> Login</a>&nbsp;
                           

                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Silvernet Global Services 2017</p>
                    </div>
                </div>
            </footer>

        </div>
    </form>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.carousel').carousel();
        });
    </script>

</body>
</html>
