<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assignpat6ienttodoctor.aspx.cs" Inherits="assignpat6ienttodoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
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
              <h2 class="page-header" style="color:orange">Assign Doctors to Patient</h2>

                        <div>
                           <asp:gridview runat="server" ID="GridView1" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="Gridview1_RowDataBound" CssClass="table table-striped table-bordered table-hover">
                               <AlternatingRowStyle BackColor="White"  /> 
                               <Columns>
                                   <asp:TemplateField HeaderText="PatientID">
                                       <ItemTemplate>
                                           <asp:Label ID="PatientID" runat="server" Text='<%# Bind("PatientID") %>'></asp:Label>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   <asp:TemplateField HeaderText="FirstName">
                                       <ItemTemplate>
                                           <asp:Label ID="lblFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                                       </ItemTemplate>
                                   </asp:TemplateField>


                                   <asp:TemplateField HeaderText="LastName">
                                       <ItemTemplate>
                                           <asp:Label ID="lblLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   <asp:TemplateField HeaderText="DoctortoSee">
                                       <ItemTemplate>
                                           <asp:Label ID="lblDoctorToSee" runat="server" Text='<%# Bind("DoctorToSee") %>'></asp:Label>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                                   <asp:TemplateField HeaderText="Doctor" >
                                       <ItemTemplate>
                                           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                       </ItemTemplate>
                                   </asp:TemplateField>

                               </Columns>
                               <EditRowStyle BackColor="#2461BF" />
                               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                               <RowStyle BackColor="#EFF3FB" />
                               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                               <SortedAscendingCellStyle BackColor="#F5F7FB" />
                               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                               <SortedDescendingCellStyle BackColor="#E9EBEF" />
                               <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:gridview>
                            <br />
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click" />

                        </div>


     </div>
     <div class="col-md-2"></div>

    </div>
   </div>
  </div>
    </form>
</body>
</html>
