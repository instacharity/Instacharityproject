<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="donorhome.aspx.cs" Inherits="donorhome" %>


<!DOCTYPE html />

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Insta Charity</title>
     <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(document).bind("mobileinit", function () {
            $.mobile.ajaxEnabled = false;
        });
   </script>
<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
    
</head>
<body>
<div class ="page" data-role="page">
<div data-role="header"  data-theme ="b">

<a href="#" data-rel="back">Back</a>
             <h1> Insta Charity </h1>
<a href="LogOut.aspx" data-role="button" >Logout</a>

</div>

    

    <div data-role= "content">
    
    <ul data-role="listview" data-filter='true'>

        <li><a href="DonorEditDetails.aspx">Edit Profile</a></li>
        <li><a href="ViewOrganizations.aspx">View Organizations</a></li>
        <li><a href="Demo.aspx">View Events</a></li>
        <li><a href="ChartEvents.aspx">Event Status</a></li>
        <li><a href= "SearchNearByOrganizations.aspx">Search Nearby Organizations</a></li>
        <li><a href="SearchNearByEvents.aspx">Search Nearby Events</a></li>
        <li><a href="JoinVolunteer.aspx">Join As Volunteer</a></li>
        <li><a href="additem.aspx">Give Away</a></li>
        <li><a href="DisplayItems.aspx">Display Give Away Items</a></li>
        <li><a href="SRChatClient.aspx">Online Chat</a></li>
        <li><a href="ViewVideos.aspx">View Videos</a></li>
    </ul>
       </div>
        <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
            
</div>
</body>
</html>

