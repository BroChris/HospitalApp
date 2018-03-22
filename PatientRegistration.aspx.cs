using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbAccess;
using System.Data;
using CaptchaDotNet2.Security.Cryptography;
using System.Drawing;
using System.IO;

public partial class PatientRegistration : System.Web.UI.Page
{
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;


    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetAllowResponseInBrowserHistory(false);
    }

    protected void OnSuccess()
    {
        //if the correct character is entered the Success code is excuted


        try
        {
            DataAcces ConnectToDb = new DataAcces();
            DataTable myData = new DataTable();
            string Query;






            Query = " EXECUTE sp_Hosp_INSERT_PatientRegistration  " + "'" + txtFirstName.Text + "'" + ","
                                                     + "'" + txtLastName.Text + "'" + ","
                                                     + "'" + txtMiddleName.Text + "'" + ","
                                                     + "'" + txtAddress.Text + "'" + ","
                                                     + "'" + txtTelephone.Text + "'" + ","
                                                     + "'" + txtGender.Text + "'" + ","
                                                     + "'" + txtEmail.Text + "'" + ","
                                                     + "'" + txtDateofBirth.Text + "'" + ","
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

    protected void LBLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx", false);
    }

    private string pictureFilename;
    protected void LinkBUploadPictures_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {

                    if (FileUpload1.PostedFile.ContentLength < 11000)
                    {
                        string PictureFilename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                        //pictureFilename = txtPin.Text + "Picture.jpeg";
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadedPictures/") + pictureFilename);
                        picPassport.ImageUrl = "~/UploadedPictures/" + pictureFilename;
                        //HFPassportPath.Value = "~\\" + "UploadedPictures\\" + pictureFilename;
                        //lblerrorMessageUpload1.Text = "";
                    }
                    else
                    {
                        //lblerrorMessageUpload1.ForeColor = Color.Red;
                        //lblerrorMessageUpload1.Text = "The Size of the image is greater than 10Kbyte";

                    }


                }

                else
                {
                    //lblerrorMessageUpload1.ForeColor = Color.Red;
                    //lblerrorMessageUpload1.Text = "The file is not jpeg Image file";

                }

            }
            catch (Exception ex)
            {

                //Remove newline character and others
                string ex1 = ex.Message.Replace("\n", String.Empty).Replace("\t", String.Empty).Replace("\r", String.Empty);
                string errorUrl;
                errorUrl = "ErrorPage.aspx?";
                errorUrl += "ErrorValue=" + ex1;
                Response.Redirect(errorUrl, false);
            }





        }
    }
}
