<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
   function initialize() {
       var LatLng = new google.maps.LatLng(54.4028997, 18.5718383);
        var gmap = {
            center: LatLng,
            zoom: 17,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map"), gmap);

        var marker = new google.maps.Marker({
            position: LatLng,
            map: map,
            title: 'VIDEO'
        });
    }
    google.maps.event.addDomListener(window, 'load', initialize); 
</script>
    <div id="contact">
    <h1>Kontakt</h1>
    <div id="map"></div>
    <div id="side-info">
        <p style="font-weight:bold; font-size: 1.1em;">Dane firmy:</p>
        <p>VIDEO.PL</p>
        <p>al. Grunwaldzka 472 A</p>
        <p>80-309 Gdańsk</p>
        <p style="font-weight:bold; font-size: 1.1em;">Kontakt:</p>
        <p>tel. 58 739 61 00</p>
        <p>mail: biuro@video.pl</p>
    </div>
        </div>

</asp:Content>

