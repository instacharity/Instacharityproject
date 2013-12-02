<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mainpage.aspx.cs" Inherits="mainpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <form id="form1" runat="server">
      <div data-role= "header"  data-theme ="b">


             <h1> Insta Charity </h1>
</div>
        <div data-role ="content">
        <link rel="stylesheet" href="nivo-slider.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>
<script src="jquery.nivo.slider.pack.js" type="text/javascript"></script>

<style type="text/css">
        .newStyle1
        {
            font-family: Cambria;
        }
        .newStyle2
        {
            font-family: cambria;
        }
    </style>
        <div data-role = "collapsible" data-collapsed= "false" data-theme="b">
        <h2> <span class="newStyle1">What is Insta Charity?</span> </h2>
        <div class "slider-wrapper" align="center">
        <div id="slider" class="nivoSlider">
    <img src="images/img1.jpg" alt="" />
    <img src="images/img2.jpg" alt="" />
    <img src="images/img3.jpg" alt="" />
    <img src="images/charity1.jpg" alt="" />
        
</div>
</div>
<div id="htmlcaption" class="nivo-html-caption">
  
</div>
        <script type="text/javascript">
            $(window).load(function () {
                $('#slider').nivoSlider({
                    effect: 'fold',               // Specify sets like: 'fold,fade,sliceDown'
                    slices: 15,                     // For slice animations
                    boxCols: 8,                     // For box animations
                    boxRows: 4,                     // For box animations
                    animSpeed: 500,                 // Slide transition speed
                    pauseTime: 2500,                // How long each slide will show
                    startSlide: 0,                  // Set starting Slide (0 index)
                    directionNav: true,             // Next & Prev navigation
                    controlNav: true,               // 1,2,3... navigation
                    controlNavThumbs: false,        // Use thumbnails for Control Nav
                    pauseOnHover: true,             // Stop animation while hovering
                    manualAdvance: false,           // Force manual transitions
                    prevText: 'Prev',               // Prev directionNav text
                    nextText: 'Next',               // Next directionNav text
                    randomStart: false,             // Start on a random slide
                    beforeChange: function () { },     // Triggers before a slide transition
                    afterChange: function () { },      // Triggers after a slide transition
                    slideshowEnd: function () { },     // Triggers after all slides have been shown
                    lastSlide: function () { },        // Triggers when last slide is shown
                    afterLoad: function () { }         // Triggers when slider has loaded
                });
            });
</script>
            <ul class="newStyle2">
                <li><b><em>&nbsp;Insta Charity is a donation platform that allows you to support a cause of your choice from Organizations that have been scrutinised for transparency & credibility.
                    </em></b></li>
                <li><b><em>We do not raise funds for ourseleves. We help you donate to these Organizations.
                    </em></b></li>
                <li><b><em>Choice of cause and donation entirely yours.
        </em></b></li>
                <li><b><em>Money guarranteed to reach the needy.</em></b></li>
            </ul>
        </div>
        <div data-role = "collapsible" data-collapsed= "true" align="center" data-theme="b">
        <h2> <span class="newStyle1">How to reach us?</span> </h2>
        <a href="https://www.facebook.com/instacharity" target="_blank">
        <img src="images/Facebook.jpg" border="0" 
        alt=" facebookicon"/  title="Follow on Facebook"></a>
        <a href="https://twitter.com/instacharity" target="_blank">
        <img src="images/Twitter.jpg" border="0" 
        alt=" twittericon"/  title="Follow on Twitter"></a>
        <a href="https://plus.google.com/102970450350945636279/posts" target="_blank">
        <img src="images/Googleplus.jpg" border="0" 
        alt=" googleplusicon"/  title="Follow on Google+"></a>
        <a href="https://www.youtube.com/channel/UCMc1Cd6iDXAulswWwMDJwQw/videos" target="_blank">
        <img src="images/Youtube.jpg" border="0" 
        alt=" youtubeicon"/  title="Follow on Youtube"></a>
        </div>
        
        <asp:Button ID="btnDonorLogin" runat="server" Text="Login as Donor" data-theme="e" 
                onclick="btnDonorLogin_Click1" />
                 
        

        <asp:Button ID="btnOrganizationLogin" runat="server" Text="Login as Organization" 
                data-theme="e" PostBackUrl="~/organizationlogin.aspx" />
         
        </div>   
        <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
  
  </form>          
</div> 
    
    
  
</body>
</html>
