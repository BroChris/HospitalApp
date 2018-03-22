using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbAccess;
using System.Data;

public partial class Diagnosis : System.Web.UI.Page
{
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;
            int PatientID = 100, DoctorID = 1;

            string Diagnosis = HttpUtility.HtmlEncode(txtDiagnosis.Text);
            string Prescription = HttpUtility.HtmlEncode(txtPrescription.Text);
            string DoctorReport = Diagnosis + " " + Prescription;

            Query = " EXECUTE sp_Hosp_INSERT_PatientHistory  " + PatientID + ","
                                                       + DoctorID + ","
                                                       + "'" + DoctorReport + "'" + ","
                                                       + "'" + txtNextAppoint.Text + "'";





            ConnectToDb.ModifyDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);


            txtDiagnosis.Text = "";
            txtPrescription.Text = "";
            txtNextAppoint.Text = "";

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

       

    }
}