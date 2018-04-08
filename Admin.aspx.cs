using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Globalization;
using System.Threading;

public partial class Admin : System.Web.UI.Page
{
    string foto;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        NumberFormatInfo nfi = new CultureInfo("en-US", false).NumberFormat;
        if (Page.IsPostBack == false)
        {
            ddlGatunek.Items.Add("Akcja");
            ddlGatunek.Items.Add("Horror");
            ddlGatunek.Items.Add("Thriller");
            ddlGatunek.Items.Add("Komedia");
            photoAdder.Visible = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            try
            {
                foto = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(@"\Images\Videos\" + FileUpload1.FileName));
                Image2.ImageUrl=("/Images/Videos/" + foto);
            }
            catch (Exception ex)
            {
                uploadMsg.ForeColor = System.Drawing.Color.Red;
                uploadMsg.Text = "Błąd w czasie dodawania zdjęcia";
            }
        }
        else
        {
            uploadMsg.ForeColor = System.Drawing.Color.Red;
            uploadMsg.Text = "Nie wybrano zdjęcia";
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        photoAdder.Visible = true;
        Image2.ImageUrl = "";
        Page.MaintainScrollPositionOnPostBack = true;
    }

    protected void GridView3_PreRender(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView3.Rows.Count-1; i++)
        {
            GridView3.Rows[i].Cells[0].Controls[1].Visible = false;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlGatunek.Items.Clear();
        
        if (ddlRodzajNosnika.SelectedValue == "DVD")
        {
            ddlGatunek.Items.Add("Akcja");
            ddlGatunek.Items.Add("Horror");
            ddlGatunek.Items.Add("Thriller");
            ddlGatunek.Items.Add("Komedia");
        }

        if (ddlRodzajNosnika.SelectedValue=="VHS")
        {
            ddlGatunek.Items.Add("Akcja");
            ddlGatunek.Items.Add("Horror");
            ddlGatunek.Items.Add("Thriller");
            ddlGatunek.Items.Add("Komedia");
        }
        if (ddlRodzajNosnika.SelectedValue == "BLUE RAY")
        {
            ddlGatunek.Items.Add("Akcja");
            ddlGatunek.Items.Add("Horror");
            ddlGatunek.Items.Add("Thriller");
            ddlGatunek.Items.Add("Komedia");
        }
        if (ddlRodzajNosnika.SelectedValue == "ONLINE")
        {
            ddlGatunek.Items.Add("Akcja");
            ddlGatunek.Items.Add("Horror");
            ddlGatunek.Items.Add("Thriller");
            ddlGatunek.Items.Add("Komedia");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        try
        {
            string path = "~" + Image2.ImageUrl;
            System.IO.File.Delete(Server.MapPath(path));
            foto = null;
            Panel1.Visible = false;
            photoAdder.Visible = false;
        }
        catch
        {
            Panel1.Visible = false;
            photoAdder.Visible = false;
        }
      
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        videoDataSource.Insert();
        uploadMsg.Text = "Wpis dodano pomyślnie";
        uploadMsg.ForeColor = System.Drawing.Color.FromArgb(69, 163, 154);
        uploadMsg.Font.Size = 22;
        foto = null;
        Panel1.Visible = false;
        photoAdder.Visible = false;
        Page.MaintainScrollPositionOnPostBack = false;

    }
}