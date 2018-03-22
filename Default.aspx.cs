using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbAccess;
using System.Data;

public partial class _Default : System.Web.UI.Page
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

        //con.Open();

        //SqlCommand cmd = new SqlCommand("select * from tbl_employee", con);
        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //DataTable dt = new DataTable();
        //sda.Fill(dt);
        //con.Close();
        //GridView1.DataSource = dt;
        //GridView1.DataBind();

        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;


            Query = "SELECT * FROM tbl_Employee";

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

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //con.Open();
           


            //SqlCommand cmd = new SqlCommand("select * from tbl_qualification", con);
            //SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            //con.Close();
            //DropDownList1.DataSource = dt;

            //DropDownList1.DataTextField = "qualification";
            //DropDownList1.DataValueField = "qualification";
            //DropDownList1.DataBind();
            //DropDownList1.Items.Insert(0, new ListItem("--Select Qualification--", "0"));


            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;

            DropDownList DropDownList1 = (e.Row.FindControl("DropDownList1") as DropDownList);

            Query = "SELECT * FROM tbl_Qualification";

            myData = ConnectToDb.SelectDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

            DropDownList1.DataSource = myData;

            DropDownList1.DataTextField = "qualification";
            DropDownList1.DataValueField = "qualification";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("--Select Qualification--", "0"));




        }
    }
}