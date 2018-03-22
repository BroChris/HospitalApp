using System;
using CaptchaDotNet2.Security.Cryptography;
using System.Drawing;

public delegate void CaptchaEventHandler();

public partial class CaptchaControl : System.Web.UI.UserControl
{
    private string color = "#ffffff";
    protected string style;
    private event CaptchaEventHandler success;
    private event CaptchaEventHandler failure;
    
    public string Message
    {
        // We don't set message in page_load, because it prevents us from changing message in failure event
        set { lblCMessage.Text = value;}
        get { return lblCMessage.Text; }
    }
    public string BackgroundColor
    {
        set { color = value.Trim("#".ToCharArray()); }
        get { return color; }
    }

    public Color ForeColor
    {
        set { lblCMessage.ForeColor = value; }
        get { return lblCMessage.ForeColor; }
    }

    public string Style
    {
        set { style = value; }
        get { return style; }
    }
    public event CaptchaEventHandler Success
    {
        add { success += value; }
        remove { success += null; }
    }
    public event CaptchaEventHandler Failure
    {
        add { failure += value; }
        remove { failure += null; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetCaptcha();
            txtCaptcha.Text = "";
        }
    }
    private void SetCaptcha()
    {
        // Set image
        string s = RandomText.Generate();

        // Encrypt
        string ens = Encryptor.Encrypt(s, "$1ve@n@%^et", Convert.FromBase64String("dtxyuvoj"));

        // Save to session
        Session["captcha"] = s.ToLower();
        
        // Set url
        imgCaptcha.ImageUrl = "~/Captcha.ashx?w=305&h=92&c=" + ens + "&bc=" + color;
    }
    protected void btnSubmit_Click(object s, EventArgs e)
    {
        if (Session["captcha"] != null && txtCaptcha.Text.ToLower() == Session["captcha"].ToString())
        {
            if (success != null)
            {
                success();
            }
        }
        else
        {
            txtCaptcha.Text = "";
            SetCaptcha();

            if (failure != null)
            {
                failure();
            }
        }
    }
}