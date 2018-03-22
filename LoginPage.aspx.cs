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

public partial class LoginPage : System.Web.UI.Page
{
    //For Database Test Connection
    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;


    protected void Page_Init(object Sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetAllowResponseInBrowserHistory(false);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //string dateTime = DateTime.Now.ToString();
        //string myString1 = dateTime.Replace("-", "").Replace(" ", "").Replace(":","");
        //string SessionString = myString1.Substring(0, myString1.Length - 2);
        //long SessionID = Convert.ToInt64(SessionString);

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Variable declaration for textboxes

        string EncryptedEmail;
        string EncryptedPassword;
        //string ExamNumber;
        string dbEmail;
        string dbPassword;
        string url;
        //int

        try
        {

            //Database Connection Object Declarations
            DataAcces ConnectToDB = new DataAcces();
            DataTable myData = new DataTable();
            string Query;



            // Encrypt
            EncryptedPassword = Encryptor.Encrypt(txtPassword.Text, "$1ve@n@%^et", Convert.FromBase64String("dtxyuvoj"));
            EncryptedEmail = Encryptor.Encrypt(txtEmail.Text, "$1ve@n@%^et", Convert.FromBase64String("dtxyuvoj"));

            //Password = txtPassword.Text;
            //Email = txtEmail.Text;
            string Pin;
            string QPassword = "'" + EncryptedPassword + "'";
            string QEmail = "'" + EncryptedEmail + "'";
            string AccountType;

            Query = "sp_SELECT_LoginDetails " + QEmail + "," + QPassword;


            myData = ConnectToDB.SelectDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

            if (myData.Rows.Count != 0)
            {
                dbEmail = Convert.ToString(myData.Rows[0]["Email"]);
                dbPassword = Convert.ToString(myData.Rows[0]["Password"]);
                Pin = myData.Rows[0]["Pin"].ToString();
                AccountType = myData.Rows[0]["AccountType"].ToString();




                // Authenticate User

                if ((EncryptedPassword == dbPassword) && (EncryptedEmail == dbEmail))
                {

                    Session["loginStatus"] = "logged In";

                    ////build the query string
                    //string dateTime = DateTime.UtcNow.ToString();

                    url = "ControlPanel.aspx?";
                    url += "uPin=" + Pin;
                    url += "&" + "ulp=" + Server.UrlEncode(EncryptedPassword);
                    url += "&" + "emL=" + Server.UrlEncode(EncryptedEmail);
                    url += "&" + "AcTy=" + Server.UrlEncode(AccountType); 
                    //url += "&" + "MKID=" + Server.UrlEncode(MarketerId.ToString());

                    Response.Redirect(url, false);

                }
                else
                {

                    txtPassword.Text = "";
                    lblDisplayLoginFail.ForeColor = Color.Red;
                    lblDisplayLoginFail.Text = "User Email or Loging Password is Incorrect!!!";

                }

            }

            else
            {

                txtPassword.Text = "";
                lblDisplayLoginFail.ForeColor = Color.Red;
                lblDisplayLoginFail.Text = "User Email or Loging Password is Incorrect!!!";

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

    protected void LBRecoverPassword_Click(object sender, EventArgs e)
    {
        string url = "";

        ////build the query string
        url = "passwordrecovery.aspx?";
        Response.Redirect(url,false);
    }

       
    protected void LBRecoverPassword2_Click(object sender, EventArgs e)
    {
        string url = "";

        ////build the query string
        url = "passwordrecovery.aspx?";
        Response.Redirect(url, false);
    }
}