using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbAccess;
using System.Data;

public partial class PatientsDoctorsAppointment : System.Web.UI.Page
{
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LBSearch_Click(object sender, EventArgs e)
    {
        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;


            Query = " EXECUTE sp_Hosp_SELECT_PatientInfo  " + "'" + txtTelephone.Text + "'";
            
            myData = ConnectToDb.SelectDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);
            int RecordCount = myData.Rows.Count;

            if (RecordCount!= 0)
            {
                //Display Records from the DB
                txtFirstName.Text = myData.Rows[0]["FirstName"].ToString();
                txtLastName.Text = myData.Rows[0]["LastName"].ToString();
                txtMiddleName.Text = myData.Rows[0]["MiddleName"].ToString();
                txtAddress.Text = myData.Rows[0]["Address"].ToString();
                txtEmail.Text = myData.Rows[0]["Email"].ToString(); ;
                txtTelephone.Text = myData.Rows[0]["Telephone"].ToString();
            

            }

           


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

    protected void txtBookPatient_Click(object sender, EventArgs e)
    {
        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;

            
            Query = " EXECUTE sp_Hosp_INSERT_PatientBooking  " + "'" + txtFirstName.Text + "'" + ","
                                                     + "'" + txtLastName.Text + "'" + ","
                                                     + "'" + txtMiddleName.Text + "'" + ","
                                                     + "'" + txtAddress.Text + "'" + ","
                                                     + "'" + txtTelephone.Text + "'" + ","
                                                     + "'" + txtEmail.Text + "'" + ","
                                                     + "'" + txtDate.Text + "'" + ","
                                                     + "'" + txtDoctorToSee.Text + "'";






            ConnectToDb.ModifyDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

            //Clear TextBoxes
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtMiddleName.Text = "";
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtTelephone.Text = "";
            txtDate.Text = "";
            txtDoctorToSee.Text = "";
           

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

    }
}