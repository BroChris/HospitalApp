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

public partial class Login_Registration : System.Web.UI.Page
{

    public string P_ServerName = DataAcces.ServerName;
    public string P_DatabaseName = DataAcces.DatabaseName;
    public string P_UserName = DataAcces.UserName;
    public string P_Password = DataAcces.Password;

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);

        if (User.Identity.IsAuthenticated)
            ViewStateUserKey = User.Identity.Name;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
      



    }

    protected void OnSuccess()
    {
        // if the correct character is entered the Success code is excuted
   
      
            try
            {
                DataAcces ConnectToDb = new DataAcces();
                DataTable myData = new DataTable();
                string Query, url;

         

         
            if (txtPassword.Text == txtConfirmPassword.Text)
            {

                // Encrypt and decrypt sample
                string Password = Encryptor.Encrypt(txtPassword.Text, "$1ve@n@%^et", Convert.FromBase64String("dtxyuvoj"));
                string Email = Encryptor.Encrypt(txtEmail.Text, "$1ve@n@%^et", Convert.FromBase64String("dtxyuvoj"));

               
                Query = " EXECUTE sp_INSERT_LoginDetails  " + "'" + Email + "'" + ","
                                                         + "'" + Password + "'" + ","
                                                         + "'" + txtPin.Text + "'";

                ConnectToDb.ModifyDataClass(Query, P_ServerName, P_DatabaseName, P_UserName, P_Password);

                //Clear TextBoxes
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtPin.Text = "";

                // build the query string for the next page sample

                url = "Login.aspx?";
                Response.Redirect(url, false);



                captcha.Visible = false;

            }

            else
            {
                lblDisplayPasswordmissmatch.ForeColor = Color.Red;
                lblDisplayPasswordmissmatch.Text = "Password do not match";
                txtConfirmPassword.Text = "";
                


            }
                                                           
         

        }
        catch (Exception ex)
        {
            //Remove newline character and others
            string ex1 = ex.Message.Replace("\n", String.Empty).Replace("\t", String.Empty).Replace("\r", String.Empty);
            string errorUrl;
            errorUrl = "ErrorPage.aspx?";
            errorUrl += "ErrorValue=" + ex.Message;
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
        Response.Redirect("Login.aspx", false);
    }
}