<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DonorHome.aspx.cs" Inherits="DonorHome" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
<meta charset="utf-8">
<title>Insta Charity</title>
<link href="styles/main.css" rel="stylesheet" type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.--><script>var __adobewebfontsappname__ = "dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n2,n6:default.js" type="text/javascript"></script>
</head>

<body>

<form id="form1" runat="server">

<div id="wrapper">
  <header id="top">
    <h1>Insta Charity</h1>
    <nav id="mainnav">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Our Mission</a></li>
        <li><a href="DonorEvent.aspx">Events</a></li>
        <li><a href="Organizations.aspx">Organizations</a></li>
      </ul>
      <script runat="server">
  

  void Signout_Click(object sender, EventArgs e)
  {
    FormsAuthentication.SignOut();
    Response.Redirect("DonorLogin.aspx");
  }
</script>
      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnDonorSignOut" runat="server" Text="SignOut" Width="90px" OnClick="Signout_Click"/>
          &nbsp;</p>
    </nav>
  </header>
  <div id="hero">
    <article>
       <h2>Our Vision</h2>
      <p>Instacharity is an initiative for UMKC project. It acts as a mediator between Organizations and Donors.</p>
    </article>
  <img src="images/img3.jpg"  alt="" width="1000" height="547" class="thispage"/>  </div>
  <article id="main">
    <h2>About us</h2>
    <p>Insta Charity is a donation platform that allows you to support a cause of your choice from Organizations that have been scrutinised for transparency & credibility. </p>
    <p>We do not raise funds for ourselves.We help you donate to these Organizations.</p><figure class="centered"><img src="images/page4_img1.jpg" width="400" height="266"  alt=""/>
      <figcaption>Help the Needy</figcaption></figure>
    <p>Choice of cause and donation entirely yours.</p>
    <p>	Money guaranteed to reach the needy.</p>
  </article>
 
  <footer>
    <p>&copy;CopyRight UMKC 2013</p>
  </footer>
</div>
    </form>
</body>
</html>

