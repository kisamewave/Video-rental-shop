<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding: 30px 0px 60px 160px; background-color: lightgray; margin-bottom: 60px;">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="24px" Text="Wyszukaj film: " Enabled="False"></asp:Label>
    <br />
        <br />
    <asp:Label ID="Label2" runat="server" Text="rodzaj nośnika:" Font-Bold="True" Font-Size="20px"></asp:Label>
    <asp:DropDownList ID="ddlRodzajNosnika" runat="server" AutoPostBack="True" DataSourceID="BazaDanych" DataTextField="RodzajNosnika" DataValueField="RodzajNosnika" CssClass="rmargin">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" Text="gatunek" Font-Bold="True" Font-Size="20px"></asp:Label>
    <asp:DropDownList ID="ddlGatunek" runat="server" AutoPostBack="True" DataSourceID="BazaDanychGat" DataTextField="Gatunek" DataValueField="Gatunek" CssClass="rmargin">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" Text="dostępne tytuły" Font-Bold="True" Font-Size="20px"></asp:Label>
    <asp:DropDownList ID="ddlTytuly" runat="server" AutoPostBack="True" DataSourceID="BazaDanychGry" DataTextField="Nazwa" DataValueField="Nazwa" CssClass="rmargin">
    </asp:DropDownList>
    <asp:Button ID="btnPokaz" runat="server" Text="POKAŻ" OnClick="btnPokaz_Click" />
    <asp:SqlDataSource ID="BazaDanychGry" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [Nazwa] FROM [Video] WHERE (([Gatunek] = ?) AND ([RodzajNosnika] = ?))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlGatunek" Name="Gatunek" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlRodzajNosnika" Name="RodzajNosnika" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="BazaDanychGat" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [Gatunek] FROM [Video] WHERE ([RodzajNosnika] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlRodzajNosnika" Name="RodzajNosnika" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="BazaDanych" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [RodzajNosnika] FROM [Video]"></asp:SqlDataSource>
        </div>
    <div id="detailsPanel" style="margin:80px 0px 40px 160px; visibility:collapse;" runat="server">
        <div style="text-align:center; float: left; width:45%; margin-bottom: 110px;">
       <img id="videophoto" src="/Images/" style="width:197px; height: 285px; visibility:collapse;" runat="server" />
            </div>
        <div style="text-align:left; float: left; width:35%; text-align:justify;">
        <p><asp:Label ID="lbTytul" runat="server" Font-Bold="True" Font-Size="39px"></asp:Label>
            <asp:Label ID="lbId" runat="server" Text="Label" Visible="false"></asp:Label>
            </p>

        <p style="font-size:18px; font-weight: bolder; margin-right: 30px;">OPIS:</p>
        <p><asp:Label ID="lbOpis" runat="server"></asp:Label></p>
    
        <p style="font-size:18px; font-weight: bolder; margin-right: 30px;">CENA:    <asp:Label ID="lbCena" runat="server" Font-Bold="True" Font-Size="27px" ForeColor="#285A5E" EnableTheming="False"></asp:Label></p>
        <p style="float:left;">
            <asp:Button ID="toPersonal" runat="server" Text="ZAMÓW" OnClick="toPersonal_Click" />
            </p>
            </div>
    </div>
</asp:Content>