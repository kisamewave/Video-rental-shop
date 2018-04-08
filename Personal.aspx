<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color:gray;  height: 40px; padding: 40px 0px 20px 50px;  font-size: 22px; color: white;">Podaj dane osobowe niezbędne do prawidłowego złożenia zamówienia: </div>
    <div style="background-color:lightgray; border:3px solid #459ca3; padding-top: 20px; padding-bottom: 30px; height:inherit; height:100%;">
        <table class="persontable animated slideInLeft">
            <tr>
                <td style="font-size: 18px;" colspan="2">Złóż zamówienie na:&nbsp;&nbsp;&nbsp;
                    <asp:Label Font-Size="24px" ID="lblNazwa" runat="server" Text="Label" Font-Bold="true"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="font-size: 18px;">Imię</td>
                <td style="font-size: 18px;">
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbImie" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbImie" Display="Dynamic" ErrorMessage="Brak podania imienia" Font-Size="Small" ForeColor="Red">Proszę podać imię</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 18px;">
                    Nazwisko</td>
                <td style="font-size: 18px;">
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbNazwisko" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbNazwisko" Display="Dynamic" ErrorMessage="Brak podania nazwiska" Font-Size="Small" ForeColor="Red">Proszę podać nazwisko</asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td style="font-size: 18px;" >
                    Ulica</td>
                <td style="font-size: 18px;">
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbUlica" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbUlica" Display="Dynamic" ErrorMessage="Brak podania ulicy" Font-Size="Small" ForeColor="Red">Proszę podać ulice</asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td style="font-size: 18px;">
                   Numer domu</td>
                <td>
                    <asp:TextBox Font-Size="18px" ID="tbNumerDomu" runat="server" Width="12%" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbNumerDomu" Display="Dynamic" ErrorMessage="Brak podania numeru domu" Font-Size="Small" ForeColor="Red">Proszę podać numer domu</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbNumerDomu" ErrorMessage="Niewłaściwy format numeru" Font-Size="Small" ForeColor="Red" MaximumValue="10000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
             <tr>
                <td style="font-size: 18px;">
                    Miasto</td>
                <td>
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbMiasto" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbMiasto" Display="Dynamic" ErrorMessage="Brak podania miasta" Font-Size="Small" ForeColor="Red">Proszę podać miasto</asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td style="font-size: 18px;">
                   Kod pocztowy</td>
                <td>
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbKodPocztowy" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbKodPocztowy" Display="Dynamic" ErrorMessage="Brak podania kodu pocztowego" Font-Size="Small" ForeColor="Red">Proszę podać kod pocztowy</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbKodPocztowy" ErrorMessage="Niewłaściwy format kodu" Font-Size="Small" ForeColor="Red" ValidationExpression="^\d{2}-\d{3}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td style="font-size: 18px;">
                   Numer telefonu</td>
                <td>
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbNumerTel" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="tbNumerTel" Display="Dynamic" ErrorMessage="Brak podania numeru telefonu" Font-Size="Small" ForeColor="Red">Proszę podać numer telefonu</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbNumerTel" ErrorMessage="Niewłaściwy format telefonu" Font-Size="Small" ForeColor="Red" ValidationExpression="^([0-9]{9})|(([0-9]{3}-){2}[0-9]{3})$"></asp:RegularExpressionValidator>
                 </td>
            </tr>
             <tr>
                <td style="font-size: 18px;">
                    Adres e-mail</td>
                <td>
                    <asp:TextBox Font-Size="18px" Width="50%" ID="tbAdresEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAdresEmail" Display="Dynamic" ErrorMessage="Brak podania adresu e-mail" Font-Size="Small" ForeColor="Red">Proszę podać adres e-mail</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbAdresEmail" ErrorMessage="Niepoprawny format adresu e-mail" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Proszę podać adres e-mail w poprawnym formacie</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style2" style="height: 23px"></td>
                <td style="height: 23px">
                    
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button BackColor="#459ca3" ForeColor="White" BorderColor="Gray" Font-Bold="true" Height="30px" Width="62%" ID="btnZamow" runat="server" Text="ZAMAWIAM" OnClick="btnZamow_Clicked" BorderWidth="0" />
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>

   


       


</asp:Content>

