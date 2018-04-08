<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div style="width:60%; float:left; padding: 0px 60px 20px 60px">
         <h1>Poznaj nasz zespół:</h1>
        
        <div style="text-align:justify" class="animated bounceInLeft">
            <img class="personimg" src="Images/mont.jpg" />
            <h1>Arkadiusz Milik</h1>
            <p>Lorem ipsum dolor sit amet lacus. Vivamus sem fringilla sit amet lorem. Vestibulum non orci. Suspendisse commodo ligula bibendum pede nunc lacus, congue eu, commodo ante. Vestibulum ante sem fringilla faucibus, nulla pulvinar velit. Mauris sit amet diam a urna. Nunc varius in, pulvinar sed, lectus. Curabitur fringilla enim, id purus. Sed ipsum quis neque. Duis nonummy eget, sollicitudin id, lacinia ut, tincidunt eu, fringilla mollis. Sed vel pede. Pellentesque placerat. Duis ac diam.Donec nonummy dui a lorem scelerisque sem. Donec condimentum nec, hendrerit vitae, vulputate accumsan. Fusce convallis justo. Integer sit amet felis. Curabitur urna quis massa sit amet, accumsan tincidunt. Fusce in nisl. Nam interdum at, lacus. Vivamus nibh. Ut facilisis. Maecenas mi quam auctor ligula. Fusce urna eu quam. Ut eget luctus et lacus vehicula wisi, fermentum in, elementum eu, iaculis odio, a condimentum justo luctus.</p>
        </div>
        
        <div style="text-align:justify; margin-top: 40px; animation-delay:0.3s;" class="animated bounceInLeft">
            <img class="personimg" src="Images/mont.jpg" />
            <h1>Robert Lewandowski</h1>
            <p>Lorem ipsum dolor sit amet lacus. Vivamus sem fringilla sit amet lorem. Vestibulum non orci. Suspendisse commodo ligula bibendum pede nunc lacus, congue eu, commodo ante. Vestibulum ante sem fringilla faucibus, nulla pulvinar velit. Mauris sit amet diam a urna. Nunc varius in, pulvinar sed, lectus. Curabitur fringilla enim, id purus. Sed ipsum quis neque. Duis nonummy eget, sollicitudin id, lacinia ut, tincidunt eu, fringilla mollis. Sed vel pede. Pellentesque placerat. Duis ac diam. Donec nonummy dui a lorem scelerisque sem. Donec condimentum nec, hendrerit vitae, vulputate accumsan. Fusce convallis justo. Integer sit amet felis. Curabitur urna quis massa sit amet, accumsan tincidunt. Fusce in nisl. Nam interdum at, lacus. Vivamus nibh. Ut facilisis. Maecenas mi quam auctor ligula. Fusce urna eu quam. Ut eget luctus et lacus vehicula wisi, fermentum in, elementum eu, iaculis odio, a condimentum justo luctus.</p>
        </div>
        <div style="text-align:justify; margin-top: 40px; animation-delay:0.8s;" class="animated bounceInLeft">
            <img class="personimg" src="Images/mont.jpg" />
            <h1>Karol Patoka</h1>
            <p>Lorem ipsum dolor sit amet lacus. Vivamus sem fringilla sit amet lorem. Vestibulum non orci. Suspendisse commodo ligula bibendum pede nunc lacus, congue eu, commodo ante. Vestibulum ante sem fringilla faucibus, nulla pulvinar velit. Mauris sit amet diam a urna. Nunc varius in, pulvinar sed, lectus. Curabitur fringilla enim, id purus. Sed ipsum quis neque. Duis nonummy eget, sollicitudin id, lacinia ut, tincidunt eu, fringilla mollis. Sed vel pede. Pellentesque placerat. Duis ac diam. Donec nonummy dui a lorem scelerisque sem. Donec condimentum nec, hendrerit vitae, vulputate accumsan. Fusce convallis justo. Integer sit amet felis. Curabitur urna quis massa sit amet, accumsan tincidunt. Fusce in nisl. Nam interdum at, lacus. Vivamus nibh. Ut facilisis. Maecenas mi quam auctor ligula. Fusce urna eu quam. Ut eget luctus et lacus vehicula wisi, fermentum in, elementum eu, iaculis odio, a condimentum justo luctus.</p>
        </div>
    </div>
    <div style="width:30%; float:left;" >

  


        <div class="accWrapper">

  <h1>Co nas wyróżnia?</h1>
        <div id="acc1" class="accordion" runat="server">elo elo</div>
            <div class="accContainer">
                <p>djwdwbfubwifbwufbwifw f wfnwfuwf whfwjfwfuiwf</p>
            </div>
        <div id="acc2" class="accordion" runat="server">elo elo</div>
            <div class="accContainer">
                <p>djwdwbfubwifbwufbwifw f wfnwfuwf whfwjfwfuiwf</p>
            </div>
            <div id="acc3" class="accordion" runat="server">elo elo</div>
            <div class="accContainer">
                <p>djwdwbfubwifbwufbwifw f wfnwfuwf whfwjfwfuiwf</p>
            </div>
            <div id="acc4" class="accordion" runat="server">elo elo</div>
            <div class="accContainer">
                <p>djwdwbfubwifbwufbwifw f wfnwfuwf whfwjfwfuiwf</p>
            </div>
            </div>
    </div>
   
    
     <script>
         $(document).ready(function () {
             $(".accContainer").hide();
             $(".accordion").click(function () {
                 $(this).next(".accContainer").slideToggle();
             });
         });
   </script>
</asp:Content>

