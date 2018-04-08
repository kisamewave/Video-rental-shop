<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div id="bannerreg" runat="server">
    </div>
    <div id="bannerreg2" runat="server">

<asp:Login ID="Login1" runat="server" Height="288px" Width="621px" CssClass="animated bounceInDown logintable" Font-Size="X-Large" LoginButtonText="Zaloguj" PasswordLabelText="Hasło:" RememberMeText="Zapamiętaj mnie" TitleText="Logowanie" UserNameLabelText="Nazwa użytkownika:" OnAuthenticate="Login1_Authenticate">
    </asp:Login>
    
    </div>
</asp:Content>

