using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Personal : System.Web.UI.Page
{
    
    string username = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
        if
            (Session["nazwa"] != null)
        {
            lblNazwa.Text = Session["nazwa"].ToString();
        }
        else
        {
            lblNazwa.Text = "NIE WYBRANO GRY!";
            lblNazwa.ForeColor = System.Drawing.Color.Red;
            btnZamow.Enabled = false;
        }
        if (btnZamow.Enabled == false)
        {
           btnZamow.Style.Add("opacity", ".5");
        }
            
            if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                username = System.Web.HttpContext.Current.User.Identity.Name;
            }
            OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=  C:\Users\student.kie.WZR\Downloads\Mobstore (3)\Mobstore\MobSto\App_Data\VideoDB.accdb");
            con.Open();
            OleDbCommand fnd = new OleDbCommand("select * from Klienci where LoginID='" + username + "'", con);
            fnd.CommandType = CommandType.Text;
            OleDbDataAdapter da = new OleDbDataAdapter(fnd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                tbImie.Text = dt.Rows[0]["Imie"].ToString();
                tbNazwisko.Text = dt.Rows[0]["Nazwisko"].ToString();
                tbUlica.Text = dt.Rows[0]["Ulica"].ToString();
                tbNumerDomu.Text = dt.Rows[0]["NrDomu"].ToString();
                tbMiasto.Text = dt.Rows[0]["Miasto"].ToString();
                tbKodPocztowy.Text = dt.Rows[0]["KodPocztowy"].ToString();
                tbNumerTel.Text = dt.Rows[0]["Telefon"].ToString();
                tbAdresEmail.Text = dt.Rows[0]["Email"].ToString();
            }
            con.Close();
    }
    protected void btnZamow_Clicked(object sender, EventArgs e)
    {
      
        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
        {
            username = System.Web.HttpContext.Current.User.Identity.Name;
        }
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source= C:\Users\student.kie.WZR\Downloads\Mobstore (3)\Mobstore\MobSto\App_Data\VideoDB.accdb");
        con.Open();
        OleDbCommand fnd = new OleDbCommand("select * from Klienci where LoginID='" + username + "'", con);
        fnd.CommandType = CommandType.Text;
        OleDbDataAdapter da = new OleDbDataAdapter(fnd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            int nrDomu = Int16.Parse(tbNumerDomu.Text);
            OleDbCommand cmd = new OleDbCommand("insert into Klienci (LoginID, Imie, Nazwisko, Email, Telefon, Ulica, NrDomu, KodPocztowy, Miasto) values ('"+username+"','" + tbImie.Text + "','" + tbNazwisko.Text +
                "','" + tbAdresEmail.Text + "','" + tbNumerTel.Text + "','" + tbUlica.Text + "'," + nrDomu + " ,'" +
                tbKodPocztowy.Text + "','" + tbMiasto.Text + "')", con);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        //fnd.Clone();
        //OleDbDataAdapter daa = new OleDbDataAdapter(fnd);
        //DataTable dtt = new DataTable();
        //daa.Fill(dtt);
        NumberFormatInfo nfi = new CultureInfo("en-US", false).NumberFormat;
        int idVideo = (int)Session["idVideo"];
        decimal cena = (decimal) Session["cena"];

        string data = DateTime.Now.ToString();
        string query = "insert into Transakcje (IDVIDEO, LoginID, DataTransakcji, Kwota) values ("+ idVideo + ",'" + username +
                "','" + data + "'," + cena.ToString("N", nfi) +");";
        /*
        tbUlica.Text = cena.ToString();
        tbImie.Text = idProg.ToString();
        tbNazwisko.Text = username;
        tbUlica.Text = cena.ToString();
        tbMiasto.Text = data;
         * */
      
        OleDbCommand snd = new OleDbCommand(query, con);
        snd.CommandType = CommandType.Text;
        snd.ExecuteNonQuery();
        con.Close();
        Session.Clear();
        Server.Transfer("Finished.aspx");

       



    }
    
}