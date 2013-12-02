<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="organizationsignup.aspx.cs" Inherits="organizationsingup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
<div class="page" data-role="page">
<form id="form1" runat="server">
    <div data-role= "header"  data-theme ="b">


             <h1> Insta Charity </h1>
</div>
            <div data-role ="content" data-theme="b">
              <p> <h2 align="center"> Organization Signup </h2> </p>
              <asp:Label ID="lblresult" runat="server" ForeColor="Red"></asp:Label>
              <asp:PlaceHolder ID="plHolder" runat="server"></asp:PlaceHolder>
              <asp:ValidationSummary ID="vs1" runat="server" />
              <div data-role="fieldcontain">
            <label for= "organizationsignupname" > Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="txtorganizationsignupname" ErrorMessage="Please provide your Organization Name" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                 </div>
                 <div data-role="fieldcontain">
                 <label>Description:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDescription" ErrorMessage="Please provide your Organization Description" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupurl" > URL :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupurl" runat="server"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtorganizationsignupurl" ErrorMessage="Please provide your Organization URL" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
           <asp:RegularExpressionValidator ID="rgURL" runat="server" ErrorMessage="Please enter valid URL" ControlToValidate="txtorganizationsignupurl" SetFocusOnError="true" Text="*" ValidationExpression="(http|https)://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?"></asp:RegularExpressionValidator>
             
                 </div>
             <div data-role="fieldcontain">
            <label for= "organizationsignupemailid" > Emailid :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupemailid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Please provide your Email Address" ControlToValidate="txtorganizationsignupemailid" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rgEmail" runat="server" ErrorMessage="Please provide valid Email Address" ControlToValidate="txtorganizationsignupemailid" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            
                 </div>
                 
                 <div data-role="fieldcontain">
            <label for= "organizationsignupaddress" > Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupaddress" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtorganizationsignupaddress" ErrorMessage="Please provide your Organization Address" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
           
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupcity" > City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupcity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcity" runat="server" ErrorMessage="Please provide your city name" ControlToValidate="txtorganizationsignupcity" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rgCity" runat="server" ErrorMessage="City name contains only characters" ControlToValidate="txtorganizationsignupcity" SetFocusOnError="true" Text="*" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                 
                 </div>
                <div data-role="fieldcontain">
            <label for= "organizationsignupstate" > State :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupstate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please provide your State name" ControlToValidate="txtorganizationsignupstate" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="State name contains only characters" ControlToValidate="txtorganizationsignupstate" SetFocusOnError="true" Text="*" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupcountry" > Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupcountry" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please provide your Country name" ControlToValidate="txtorganizationsignupcountry" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Country name contains only characters" ControlToValidate="txtorganizationsignupcountry" SetFocusOnError="true" Text="*" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupzipcode" > Zip Code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupzipcode" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please provide ZipCode" ControlToValidate="txtorganizationsignupzipcode" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="The zip code must be 5 numeric digits" ControlToValidate="txtorganizationsignupzipcode" SetFocusOnError="true" Text="*" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
            
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignuppassword" > Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignuppassword" runat="server" TextMode= "Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPswd" runat="server" ErrorMessage="Please provide your Password" ControlToValidate="txtorganizationsignuppassword" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
                 </div>
            <asp:button ID="btnorganizationsignup" runat="server" Text="Signup" 
                    onclick="btnorganizationsignup_Click"/> 
</div>
 </form>
 <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
            

   
    </div>
</body>
</html>