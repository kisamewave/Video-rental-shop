<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="padding: 30px 0px 60px 160px; background-color: lightgray; padding-bottom: 60px;">

        <asp:Label ID="uploadMsg" runat="server"></asp:Label>
         <br />
        <br />
             <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="22px" Text="Lista gier"></asp:Label>
        <br />
        <br />
        <asp:GridView BackColor="White" Width="80%" ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IDVIDEO" DataSourceID="videoDataSource" OnPreRender="GridView3_PreRender">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Nowy</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IDVIDEO" HeaderText="IDVIDEO" InsertVisible="False" ReadOnly="True" SortExpression="IDVIDEO" />
                <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                <asp:BoundField DataField="RodzajNosnika" HeaderText="RodzajNosnika" SortExpression="RodzajNosnika" />
                <asp:BoundField DataField="Gatunek" HeaderText="Gatunek" SortExpression="Gatunek" />
                <asp:BoundField DataField="Opis" HeaderText="Opis" SortExpression="Opis" />
                <asp:BoundField DataField="Cena" HeaderText="Cena" SortExpression="Cena" />
            </Columns>
            <HeaderStyle BackColor="#459CA3" ForeColor="White" />
            <PagerStyle BackColor="Gray" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:AccessDataSource runat="server" ID="videoDataSource" SelectCommand="SELECT * FROM [Video] ORDER BY [IDVIDEO]" DataFile="C:\Users\Student.kie.WZR\Downloads\Nowy folder\Mobstore\MobSto\App_Data\VideoDB.accdb" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Video] WHERE ([IDVIDEO] = ?)" InsertCommand="INSERT INTO [Video] ([Nazwa], [RodzajNosnika], [Gatunek], [Opis], [Cena]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Video] SET [Nazwa] = ?, [RodzajNosnika] = ?, [Gatunek] = ?, [Opis] = ?, [Cena] = ? WHERE [IDVIDEO] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_IDVIDEO" Type="Int32" />
                <asp:Parameter Name="original_Nazwa" Type="String" />
                <asp:Parameter Name="original_Nazwa" Type="String" />
                <asp:Parameter Name="original_RodzajNosnika" Type="String" />
                <asp:Parameter Name="original_RodzajNosnika" Type="String" />
                <asp:Parameter Name="original_Gatunek" Type="String" />
                <asp:Parameter Name="original_Gatunek" Type="String" />
                <asp:Parameter Name="original_Opis" Type="String" />
                <asp:Parameter Name="original_Opis" Type="String" />
                <asp:Parameter Name="original_Cena" Type="Decimal" />
                <asp:Parameter Name="original_Cena" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="tbTytul" Name="Nazwa" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ddlRodzajNosnika" Name="RodzajNosnika" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlGatunek" Name="Gatunek" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="tbOpis" Name="Opis" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="tbCena" DbType="Currency" Name="Cena" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nazwa" />
                <asp:Parameter Name="RodzajNosnika" Type="String" />
                <asp:Parameter Name="Gatunek" Type="String" />
                <asp:Parameter Name="Opis" Type="String" />
                <asp:Parameter Name="Cena" DbType="Currency" DefaultValue="" />
                <asp:Parameter Name="original_IDVIDEO" Type="Int32" />
                <asp:Parameter Name="original_Nazwa" Type="String" />
                <asp:Parameter Name="original_Nazwa" Type="String" />
                <asp:Parameter Name="original_RodzajNosnika" Type="String" />
                <asp:Parameter Name="original_RodzajNosnika" Type="String" />
                <asp:Parameter Name="original_Gatunek" Type="String" />
                <asp:Parameter Name="original_Gatunek" Type="String" />
                <asp:Parameter Name="original_Opis" Type="String" />
                <asp:Parameter Name="original_Opis" Type="String" />
                <asp:Parameter Name="original_Cena" Type="Decimal" />
                <asp:Parameter Name="original_Cena" Type="Decimal" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <asp:Panel ID="Panel1" runat="server" Visible="false" BackColor="Gray" Width="75%" CssClass="panelpad">
            <br />
            <table style="width: 100%; text-align: left;" aria-busy="False">
                <tr>
                    <td style="width: 164px">
                        <asp:Label ID="Label5" runat="server" CssClass="tbAdmin" Text="Tytuł"></asp:Label>
                    </td>
                    <td style="width: 380px">
                        <asp:TextBox ID="tbTytul" runat="server" CssClass="tbAdmin" Width="40%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BackColor="LightGray" ControlToValidate="tbTytul" ErrorMessage="Wprowadź tytuł filmu!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td rowspan="6">
                        <asp:Image Width="197px" Height="285px" ID="Image2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 164px; height: 22px;">
                        <asp:Label ID="Label6" runat="server" CssClass="tbAdmin" Text="Rodzaj nośnika"></asp:Label>
                    </td>
                    <td style="height: 22px; width: 380px;">
                        <asp:DropDownList ID="ddlRodzajNosnika" runat="server" AutoPostBack="True" CssClass="tbAdmin" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="40%">
                            <asp:ListItem>DVD</asp:ListItem>
                            <asp:ListItem>VHS</asp:ListItem>
                            <asp:ListItem>BLUE RAY</asp:ListItem>
                            <asp:ListItem>ONLINE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 164px">
                        <asp:Label ID="Label7" runat="server" CssClass="tbAdmin" Text="Gatunek"></asp:Label>
                    </td>
                    <td style="width: 380px">
                        <asp:DropDownList ID="ddlGatunek" runat="server" CssClass="tbAdmin" Width="40%">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 164px">
                        <asp:Label ID="Label9" runat="server" CssClass="tbAdmin" Text="Opis"></asp:Label>
                    </td>
                    <td style="width: 380px">
                        <asp:TextBox ID="tbOpis" runat="server" CssClass="tbAdmin opis" Width="40%" Height="105px" MaxLength="255" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 164px">
                        <asp:Label ID="Label10" runat="server" CssClass="tbAdmin" Text="Cena"></asp:Label>
                    </td>
                    <td style="width: 380px">
                        <asp:TextBox ID="tbCena" runat="server" CssClass="tbAdmin" Width="40%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="LightGray" ControlToValidate="tbCena" ErrorMessage="Wprowadź cenę!" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="LightGray" ControlToValidate="tbCena" ErrorMessage="Zły format!" Font-Size="Small" ForeColor="Red" ValidationExpression="^([0-9]{0,4}((,)[0-9]{0,2}))$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btnInsert" runat="server" Text="Dodaj" OnClick="btnInsert_Click" CssClass="btnAdmin" />
            <asp:Button ID="btnCancel" runat="server" Text="Anuluj" OnClick="btnCancel_Click" CssClass="btnAdmin" />
            <br />
        </asp:Panel>
        <div id="photoAdder" style="background-color:gray; width: 78%; color: white; padding: 20px 0px 20px 20px; border: 2px solid white;" runat="server">
        <asp:Label ID="Label4" runat="server" Text="Dodaj zdjęcie filmu:" Font-Bold="True" Font-Size="20px"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="DODAJ" />
            </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="22px" Text="Lista klientów"></asp:Label>
        <br />
        <br />       
        <asp:AccessDataSource runat="server" ID="klienciDataSource" SelectCommand="SELECT * FROM [Klienci]" DataFile="C:\Users\Student.kie.WZR\Downloads\Nowy folder\Mobstore\MobSto\App_Data\VideoDB.accdb" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Klienci] WHERE ([LoginID] = ?)" InsertCommand="INSERT INTO [Klienci] ([IdKlient], [LoginID], [Imie], [Nazwisko], [Email], [Telefon], [Ulica], [NrDomu], [KodPocztowy], [Miasto]) VALUES (?,?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Klienci] SET [Imie] = ?, [Nazwisko] = ?, [Email] = ?, [Telefon] = ?, [Ulica] = ?, [NrDomu] = ?, [KodPocztowy] = ?, [Miasto] = ? WHERE (([LoginID] = ?) OR ([LoginID] IS NULL AND ? IS NULL)) AND (([Imie] = ?) OR ([Imie] IS NULL AND ? IS NULL)) AND (([Nazwisko] = ?) OR ([Nazwisko] IS NULL AND ? IS NULL)) AND (([Email] = ?) OR ([Email] IS NULL AND ? IS NULL)) AND (([Telefon] = ?) OR ([Telefon] IS NULL AND ? IS NULL)) AND (([Ulica] = ?) OR ([Ulica] IS NULL AND ? IS NULL)) AND (([NrDomu] = ?) OR ([NrDomu] IS NULL AND ? IS NULL)) AND (([KodPocztowy] = ?) OR ([KodPocztowy] IS NULL AND ? IS NULL)) AND (([Miasto] = ?) OR ([Miasto] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_IdKlient" Type="String" />
                <asp:Parameter Name="original_LoginID" Type="String" />
                <asp:Parameter Name="original_Imie" Type="String" />
                <asp:Parameter Name="original_Imie" Type="String" />
                <asp:Parameter Name="original_Nazwisko" Type="String" />
                <asp:Parameter Name="original_Nazwisko" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Telefon" Type="String" />
                <asp:Parameter Name="original_Telefon" Type="String" />
                <asp:Parameter Name="original_Ulica" Type="String" />
                <asp:Parameter Name="original_Ulica" Type="String" />
                <asp:Parameter Name="original_NrDomu" Type="Int32" />
                <asp:Parameter Name="original_NrDomu" Type="Int32" />
                <asp:Parameter Name="original_KodPocztowy" Type="String" />
                <asp:Parameter Name="original_KodPocztowy" Type="String" />
                <asp:Parameter Name="original_Miasto" Type="String" />
                <asp:Parameter Name="original_Miasto" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdKlient" Type="String" />
                <asp:Parameter Name="IdKlient" Type="String" />
                <asp:Parameter Name="LoginID" Type="String" />
                <asp:Parameter Name="LoginID" Type="String" />
                <asp:Parameter Name="Imie" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telefon" Type="String" />
                <asp:Parameter Name="Ulica" Type="String" />
                <asp:Parameter Name="NrDomu" Type="Int32" />
                <asp:Parameter Name="KodPocztowy" Type="String" />
                <asp:Parameter Name="Miasto" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Imie" Type="String" />
                <asp:Parameter Name="Nazwisko" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Telefon" Type="String" />
                <asp:Parameter Name="Ulica" Type="String" />
                <asp:Parameter Name="NrDomu" Type="Int32" />
                <asp:Parameter Name="KodPocztowy" Type="String" />
                <asp:Parameter Name="Miasto" Type="String" />
                <asp:Parameter Name="original_IdKlient" Type="String" />
                <asp:Parameter Name="original_LoginID" Type="String" />
                <asp:Parameter Name="original_Imie" Type="String" />
                <asp:Parameter Name="original_Imie" Type="String" />
                <asp:Parameter Name="original_Nazwisko" Type="String" />
                <asp:Parameter Name="original_Nazwisko" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Telefon" Type="String" />
                <asp:Parameter Name="original_Telefon" Type="String" />
                <asp:Parameter Name="original_Ulica" Type="String" />
                <asp:Parameter Name="original_Ulica" Type="String" />
                <asp:Parameter Name="original_NrDomu" Type="Int32" />
                <asp:Parameter Name="original_NrDomu" Type="Int32" />
                <asp:Parameter Name="original_KodPocztowy" Type="String" />
                <asp:Parameter Name="original_KodPocztowy" Type="String" />
                <asp:Parameter Name="original_Miasto" Type="String" />
                <asp:Parameter Name="original_Miasto" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
         
        
        <asp:GridView BackColor="White" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="LoginID" DataSourceID="klienciDataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="IdKlient" HeaderText="IdKlient" ReadOnly="True" SortExpression="IdKlient" />
                <asp:BoundField DataField="LoginID" HeaderText="LoginID" ReadOnly="True" SortExpression="LoginID" />
                <asp:BoundField DataField="Imie" HeaderText="Imie" SortExpression="Imie" />
                <asp:BoundField DataField="Nazwisko" HeaderText="Nazwisko" SortExpression="Nazwisko" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" />
                <asp:BoundField DataField="Ulica" HeaderText="Ulica" SortExpression="Ulica" />
                <asp:BoundField DataField="NrDomu" HeaderText="NrDomu" SortExpression="NrDomu" />
                <asp:BoundField DataField="KodPocztowy" HeaderText="KodPocztowy" SortExpression="KodPocztowy" />
                <asp:BoundField DataField="Miasto" HeaderText="Miasto" SortExpression="Miasto" />
            </Columns>
            <HeaderStyle BackColor="#459CA3" ForeColor="White" />
            <PagerStyle BackColor="Gray" ForeColor="White" />
        </asp:GridView>
         
        
        <br />
        <br />
             <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="22px" Text="Lista transakcji"></asp:Label>
        <br />
        <br />


        <asp:GridView BackColor="White" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdTransakcji" DataSourceID="transakcje" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="IdTransakcji" HeaderText="IdTransakcji" InsertVisible="False" ReadOnly="True" SortExpression="IdTransakcji" />
                <asp:BoundField DataField="IDVIDEO" HeaderText="IDVIDEO" SortExpression="IDVIDEO" />
                <asp:BoundField DataField="LoginID" HeaderText="LoginID" SortExpression="LoginID" />
                <asp:BoundField DataField="DataTransakcji" HeaderText="DataTransakcji" SortExpression="DataTransakcji" />
                <asp:BoundField DataField="Kwota" HeaderText="Kwota" SortExpression="Kwota" />
            </Columns>
            <HeaderStyle BackColor="#459CA3" ForeColor="White" />
            <PagerStyle BackColor="Gray" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="transakcje" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Transakcje] WHERE [IdTransakcji] = ? AND (([IDVIDEO] = ?) OR ([IDVIDEO] IS NULL AND ? IS NULL)) AND (([LoginID] = ?) OR ([LoginID] IS NULL AND ? IS NULL)) AND (([DataTransakcji] = ?) OR ([DataTransakcji] IS NULL AND ? IS NULL)) AND (([Kwota] = ?) OR ([Kwota] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Transakcje] ([IdTransakcji], [IDVIDEO], [LoginID], [DataTransakcji], [Kwota]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Transakcje]" UpdateCommand="UPDATE [Transakcje] SET [IDVIDEO] = ?, [LoginID] = ?, [DataTransakcji] = ?, [Kwota] = ? WHERE [IdTransakcji] = ? AND (([IDVIDEO] = ?) OR ([IDVIDEO] IS NULL AND ? IS NULL)) AND (([LoginID] = ?) OR ([LoginID] IS NULL AND ? IS NULL)) AND (([DataTransakcji] = ?) OR ([DataTransakcji] IS NULL AND ? IS NULL)) AND (([Kwota] = ?) OR ([Kwota] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_IdTransakcji" Type="Int32" />
                <asp:Parameter Name="original_IDVIDEO" Type="Int32" />
                <asp:Parameter Name="original_IDVIDEO" Type="Int32" />
                <asp:Parameter Name="original_LoginID" Type="String" />
                <asp:Parameter Name="original_LoginID" Type="String" />
                <asp:Parameter Name="original_DataTransakcji" Type="String" />
                <asp:Parameter Name="original_DataTransakcji" Type="String" />
                <asp:Parameter Name="original_Kwota" Type="Decimal" />
                <asp:Parameter Name="original_Kwota" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IdTransakcji" Type="Int32" />
                <asp:Parameter Name="IDVIDEO" Type="Int32" />
                <asp:Parameter Name="LoginID" Type="String" />
                <asp:Parameter Name="DataTransakcji" Type="String" />
                <asp:Parameter Name="Kwota" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IDVIDEO" Type="Int32" />
                <asp:Parameter Name="LoginID" Type="String" />
                <asp:Parameter Name="DataTransakcji" Type="String" />
                <asp:Parameter Name="Kwota" Type="Decimal" />
                <asp:Parameter Name="original_IdTransakcji" Type="Int32" />
                <asp:Parameter Name="original_IDVIDEO" Type="Int32" />
                <asp:Parameter Name="original_IDVIDEO" Type="Int32" />
                <asp:Parameter Name="original_LoginID" Type="String" />
                <asp:Parameter Name="original_LoginID" Type="String" />
                <asp:Parameter Name="original_DataTransakcji" Type="String" />
                <asp:Parameter Name="original_DataTransakcji" Type="String" />
                <asp:Parameter Name="original_Kwota" Type="Decimal" />
                <asp:Parameter Name="original_Kwota" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
       
        </div>
    
</asp:Content>

