using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Video : System.Web.UI.Page
{
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            detailsPanel.Attributes.Remove("class");
        }
    }
    protected void btnPokaz_Click(object sender, EventArgs e)
    {
        detailsPanel.Attributes.Add("class", "animated slideInLeft");
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source= C:\Users\student.kie.WZR\Downloads\Mobstore (3)\Mobstore\MobSto\App_Data\VideoDB.accdb");
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select * from Video where Nazwa='" + ddlTytuly.SelectedValue +"'", con);
        cmd.CommandType = CommandType.Text;
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0][1] != DBNull.Value)
            {
                detailsPanel.Attributes.Add("style", "visibility: visible");
                lbTytul.Text = dt.Rows[0]["Nazwa"].ToString();
                int idVideo = (int) dt.Rows[0]["IDVIDEO"];
                lbOpis.Text = dt.Rows[0]["Opis"].ToString();
                decimal cena = (decimal)dt.Rows[0]["Cena"];
                lbCena.Text = cena.ToString("F") + "PLN";
                videophoto.Attributes.Add("style", "visibility:visible");
                videophoto.Src = "/Images/Videos/" + ddlTytuly.SelectedValue + ".jpg";
                Session["nazwa"] = dt.Rows[0]["Nazwa"].ToString();
                Session["cena"] = cena;
                Session["idVideo"] = idVideo;
                if (!File.Exists(Server.MapPath("/Images/Videos/" + ddlTytuly.SelectedValue + ".jpg")))
                {
                    videophoto.Src = "/Images/Videos/noPicFound.jpg";
                }        
            }
        }
        
    }

    protected void toPersonal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Personal.aspx");
       
    }
}