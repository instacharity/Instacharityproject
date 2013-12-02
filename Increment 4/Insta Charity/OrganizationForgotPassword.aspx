<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrganizationForgotPassword.aspx.cs" Inherits="OrganizationForgotPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Insta charity</title>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div data-role= "header"  data-theme ="b">


             <h1> Insta Charity </h1>
</div>
<div data-role= "content">
    <div style="font-family:Arial">
    
         
            <div data-role= "fieldcontain">
            <label for ="OrganizationEmailId"> Email Id </label>
                
                <asp:TextBox ID="txtOrganizationEmailId" runat="server">
                </asp:TextBox>
                
                </div>
          
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnOrganizationResetPassword" runat="server" 
                 Text="Reset Password" onclick="btnOrganizationResetPassword_Click"  />
           
           
                &nbsp;<br />
            <br />
           
           
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            
     
    
            <br />
            <br />
            
     
    
<a href= "mainpage.aspx" runat="server"> Go to Home</a>
</div>
<div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
            
</div>
            
    </form>
</body>
</html>
