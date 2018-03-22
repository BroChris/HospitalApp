using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbAccess;
using System.Data;

public partial class PatientHistory : System.Web.UI.Page
{
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;


    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;
            int PatientID = 100;


            Query = " EXECUTE sp_Hosp_SELECT_PatientHistory  " + PatientID;
                                                       
            myData = ConnectToDb.SelectDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);
            int RecordCount = myData.Rows.Count;

            if (RecordCount>0)
            {
                DivPatientHistory.InnerHtml = myData.Rows[0]["PatientHistory"].ToString();
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
}