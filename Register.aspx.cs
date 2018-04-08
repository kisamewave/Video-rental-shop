using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.Cookies["design"] != null)
            {
                HttpCookie design = Request.Cookies["design"];
                string color = design["color"];

              
                if (color.ToLower() == "optymistyczny")
                {
                    bannerreg.Attributes.Add("style", "background-color:pink");
                    bannerreg2.Attributes.Add("style", "background-color:pink");
                }
                if (color.ToLower() == "hellfever")
                {
                    bannerreg.Attributes.Add("style", "background-color: black");
                    bannerreg2.Attributes.Add("style", "background-color: black");
                }
            }
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string login = Login1.UserName;
        string password = Login1.Password;

        if(Application[login] != null && password == Application[login].ToString())
        {
            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(login, Login1.RememberMeSet);
            
        }
    }
}