using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CaptchaDotNet2.Security.Cryptography;
using System.Drawing;
using DbAccess;
using System.Data;

public partial class DoctorsRegistration : System.Web.UI.Page
{
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void OnSuccess()
    {
        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;

                       

            Query = " EXECUTE sp_Hosp_INSERT_DoctorsRegistration  " + "'" + txtFirstName.Text + "'" + ","
                                                     + "'" + txtLastName.Text + "'" + ","
                                                     + "'" + txtMiddleName.Text + "'" + ","
                                                     + "'" + txtGender.Text + "'" + ","
                                                     + "'" + txtAddress.Text + "'" + ","
                                                     + "'" + txtTelephone.Text + "'" + ","
                                                     + "'" + txtEmail.Text + "'" + ","
                                                     + "'" + txtDateofBirth.Text + "'" + ","
                                                     + "'" + txtSpecialty.Text + "'" + ","
                                                     + "'" + txtNextofKin.Text + "'" + ","
                                                     + "'" + txtNextofKinContact.Text + "'";




            ConnectToDb.ModifyDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

            //Clear TextBoxes
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtMiddleName.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtTelephone.Text = "";
            txtGender.Text = "";
            txtDateofBirth.Text = "";
            txtNextofKin.Text = "";
            txtNextofKinContact.Text = "";

            //build the query string for the next page sample






        }
        catch (Exception ex)
        {
            // Remove newline character and others
            string ex1 = ex.Message.Replace("\n", String.Empty).Replace("\t", String.Empty).Replace("\r", String.Empty);
            string errorUrl;
            errorUrl = "ErrorPage.aspx?";
            errorUrl += "ErrorValue=" + ex1;
            Response.Redirect(errorUrl, false);
        }



    }// end of Onsucess method


    protected void OnFailure()
    {
        captcha.ForeColor = Color.Red;
        captcha.Message = "The text you entered was not correct. Please try again:";
    }
}