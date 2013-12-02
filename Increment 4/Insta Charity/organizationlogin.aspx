<%@ Page Language="C#" AutoEventWireup="true" CodeFile="organizationlogin.aspx.cs" Inherits="organizationlogin" %>

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
   <div data-role ="content" data-theme="b">
           <p> <h2 align="center"> Organization Login </h2></p>
           <asp:Label ID="lblError"  ForeColor="Red" runat="server"></asp:Label>
           
             <div data-role="fieldcontain">
            <label for= "organizationemailid" > Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" ID="txtorganizationemailid" Required runat="server" />
                            </label>
                 </div>
            <div data-role ="fieldcontain">
                <label for="organizationloginpassword"> Password :&nbsp;&nbsp;&nbsp; </label>
               <input type="password" ID="txtorganizationloginpassword" Required runat="server" />
            

            </div>
            <asp:button ID="btnorganizationlogin" runat="server" Text="Login" 
                   onclick="btnorganizationlogin_Click"/> 
    <p> Not yet registered ? <a href="organizationsignup.aspx"> Click here to signup </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
               <p> &nbsp;Forgot your password ? <a href="OrganizationForgotPassword.aspx"> Click here to reset </a> </p>
    <p> &nbsp;</p>
              
</div>
<div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
    </form>
    </div>
</body>
</html>
