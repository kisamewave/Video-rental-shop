using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Finished : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Dziękujemy za złożone zamówienie. Za chwilę nastąpi powrót do sklepu...");
    }
    protected void timerRed_Tick(object sender, EventArgs e)
    {
        Response.Redirect("Video.aspx");
    }
}