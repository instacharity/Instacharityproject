﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Insta Charity | Join Volunteer</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.6.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Vegur_700.font.js"></script>
<script type="text/javascript" src="js/Vegur_400.font.js"></script>
<script type="text/javascript" src="js/Vegur_300.font.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.box1 figure{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page5">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <h1><a href="Home.aspx" id="footer_logo"><span>Insta</span>Charity</a></h1>
        <nav>
          <ul id="top_nav">
            <li><a href="Home.aspx"><img src="images/top_icon1.gif" alt=""></a></li>
            <li><a href="#"><img src="images/top_icon2.gif" alt=""></a></li>
            <li class="end"><a href="Home.aspx"><img src="images/top_icon3.gif" alt=""></a></li>
          </ul>
        </nav>
        <nav>
          <ul id="menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="Mission.aspx">Our Mission</a></li>
            <li><a href="TrustRegistration.aspx">Trust SignUp</a></li>
            <li><a href="TrustLogin.aspx">Trust Login</a></li>
            <li><a href="Login.aspx">Login</a></li>
            <li id="menu_active"><a href="Register.aspx">Register</a></li>
          </ul>
        </nav>
      </div>
    </header>
    <!-- / header -->
    <!-- content -->
    <article id="content">
      <div class="wrapper">
        <div class="box1">
          <div class="line1 wrapper">
            <section class="col1">
              <h2><strong>O</strong>ur<span>Address</span></h2>
              <strong class="address"> Country:<br>
              City:<br>

              Zip Code:<br>
              Telephone:<br>
              Fax:<br>
              E-Mail: </strong> USA<br>
              Kansas City<br>
              64112<br>
              +354 5635600<br>
              +354 5635610<br>
              <a href="#">instacharity@gmail.com</a> </section>
            <section class="col2 pad_left1">
              <h2 class="color2"><strong>M</strong>iscellaneous<span>info</span></h2>
              <p class="pad_bot1"> Updated Soon. </p>
              Updated soon. </section>
          </div>
        </div>
      </div>
      <div class="wrapper">
        <div class="pad_left2 relative">
          <h4 class="color3"><span>DonorRegistration</span>Form</h4>
          <img src="images/page6_img1.png" alt="" class="img1">
          <form id="DonorRegistrationForm" runat="server">
          <asp:Label ID="lblDonorRegisterResult" runat="server"></asp:Label>
          <asp:ValidationSummary ID="vsDonorRegistration" runat="server" />
            <div>
              <div class="wrapper"><span>Your First Name:</span>
                <asp:TextBox ID="txtDonorRegisterFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDonorRegisterFirstName" runat="server" ErrorMessage="Please provide your First Name" ControlToValidate="txtDonorRegisterFirstName" SetFocusOnError="true" Text="*" />
              </div>
              <div class="wrapper"><span>Your Last Name:</span>
                <asp:TextBox ID="txtDonorRegisterLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDonorRegisterLastName" runat="server" ErrorMessage="Please provide your Last Name" ControlToValidate="txtDonorRegisterLastName" SetFocusOnError="true" Text="*" />
              </div>
              <div class="wrapper"><span>Your Email:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtDonorRegisterEmailId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDonorRegisterEmailId" runat="server" ErrorMessage="Please provide your Email Address" ControlToValidate="txtDonorRegisterEmailId" SetFocusOnError="true" Text="*" />
              </div>
			  <div class="wrapper"><span>Your Password:</span>&nbsp;
                <asp:TextBox ID="txtDonorRegisterPassword" textmode="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDonorRegisterPassword" runat="server" ErrorMessage="Please provide your Password" ControlToValidate="txtDonorRegisterPassword" SetFocusOnError="true" Text="*" />
              </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDonorRegister" class="button2 color 3" Text="Register" runat="server" OnClick="btnDonorRegister_Click" /> 
                    
            </div>       
          </form>
        </div>
      </div>
      </article>
    <!-- / content -->
    <!-- footer -->





    <footer>
      <div class="wrapper"> <a href="Home.aspx" id="footer_logo"><span>Insta</span>Charity</a>
        <ul id="icons">
          <li><a href="#" class="normaltip"><img src="images/icon1.gif" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon2.gif" alt=""></a></li>
          <li><a href="#" class="normaltip"><img src="images/icon3.gif" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <nav>
          <ul id="footer_menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="Mission.aspx">Our Mission</a></li>
            <li><a href="Home.aspx">News &amp; Press</a></li>
            <li><a href="Home.aspx">How to Help</a></li>
            <li class="end active"><a href="Home.aspx">Contact</a></li>
          </ul>
        </nav>
        <div class="tel"><span>+1 800</span>123 45 67</div>
      </div>
      <div id="footer_text">Copyright &copy; <a href="#">UMKC</a> All Rights Reserved<br>
        Design by <a target="_blank" href="http://www.umkc.edu/">TECHROOS</a></div>
    </footer>
    <!-- / footer -->
  </div>
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>
