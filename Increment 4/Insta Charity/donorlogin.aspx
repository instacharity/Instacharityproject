<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donorlogin.aspx.cs" Inherits="donorlogin" %>

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
          
           <p> <h2 align="center"> Donor Login </h2></p>
           <div data-role="fieldcontain">
                     <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                     
           </div>
 
             <div data-role="fieldcontain">
            <label for= "donoremailid" > Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <input type="text" ID="txtdonoremailid" Required runat="server" />
            
                 </label>
             </div>
            <div data-role ="fieldcontain">
                <label for="donorloginpassword"> Password :&nbsp;&nbsp;&nbsp; </label>
            

                <input type="password" ID="txtdonorloginpassword" Required runat="server" textmode= "password" />   
                
                </div>          
            <asp:button ID="btndonorlogin" runat="server" Text="Login" 
               onclick="btndonorlogin_Click"/> 
       <p> Not yet registered ? <a href ="donorsignup.aspx"> Click here to signup </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
           <p> Forgot your password ? <a href="DonorForgotPassword.aspx"> Click here to reset </a> </p>
       <p> &nbsp;</p>
       
                
    <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
       </form>

    </div>
</body>
</html>
