using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbAccess;
using System.Data;

public partial class assignpat6ienttodoctor : System.Web.UI.Page
{
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            refreshdata();
        }
    }

    public void refreshdata()
    {
               
        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;


            Query = "SELECT PatientID, FirstName,LastName, DoctorToSee FROM tbl_Hosp_PatientBooking";

            myData = ConnectToDb.SelectDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

            GridView1.DataSource = myData;
            GridView1.DataBind();




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

    protected void Gridview1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
           

            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;

            DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);

            Query = "SELECT FirstName + ' ' + LastName As Doctor FROM tbl_Hosp_DoctorRegistration";

            myData = ConnectToDb.SelectDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

            DropDownList1.DataSource = myData;

            DropDownList1.DataTextField = "Doctor";
            DropDownList1.DataValueField = "Doctor";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select Doctor--", "0"));




        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        try
        {
            var myDoctor = "";

            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;



            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    //for (int i = 0; i < row.Cells.Count; i++)
                    //{
                    Label PatientID = row.FindControl("PatientID") as Label;
                    Label FirstName = row.FindControl("lblFirstName") as Label;
                    Label LastName = row.FindControl("lblLAstName") as Label;
                    Label DoctorToSee = row.FindControl("lblDoctorToSee") as Label;
                    DropDownList Doctor = row.FindControl("DropDownList1") as DropDownList;
                    myDoctor = Doctor.SelectedItem.Text;

                    Query = " sp_Hosp_INSERT_PatientDoctorAssignment " + Convert.ToUInt64(PatientID.Text) + ","
                                                                       + "'" + FirstName.Text + "'" + ","
                                                                       + "'" + LastName.Text + "'" + ","
                                                                       + "'" + DoctorToSee.Text + "'" + ","
                                                                       + "'" + myDoctor + "'";

                    ConnectToDb.ModifyDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);



                    //}
                }

            }

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Data Saved');", true);
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