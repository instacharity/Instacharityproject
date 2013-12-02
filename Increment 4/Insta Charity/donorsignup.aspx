<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donorsignup.aspx.cs" Inherits="donorsignup" %>

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
    <div data-role ="content" data-theme="b">
              <p> <h2 align="center"> Donor Signup </h2> </p>
              <asp:Label ID="lblResult" ForeColor="Red" runat="server"></asp:Label>
              <asp:PlaceHolder ID="plHolder" runat="server"></asp:PlaceHolder>
              <asp:ValidationSummary ID="vs1" runat="server" />
              <div data-role="fieldcontain">
            <label for= "donorsignupfirstname" > First Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" ID="txtdonorsignupfirstname" maxlength="20" runat="server" Required />
                 </div>
             <div data-role="fieldcontain">
            <label for= "donorsignuplastname" > Last Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" ID="txtdonorsignuplastname" Required runat="server" />
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupemailid" > EmailId :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><asp:TextBox ID="txtdonorsignupemailid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="Please provide your Email Address" ControlToValidate="txtdonorsignupemailid" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="re1" runat="server" ErrorMessage="Please provide valid Email Address" ControlToValidate="txtdonorsignupemailid" Text="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupaddress" > Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <input type="text" ID="txtdonorsignupaddress" Required runat="server" />
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupcity" > City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtdonorsignupcity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvcity" runat="server" ErrorMessage="Please provide your city name" ControlToValidate="txtdonorsignupcity" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rgCity" runat="server" ErrorMessage="City name contains only characters" ControlToValidate="txtdonorsignupcity" SetFocusOnError="true" Text="*" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                 </div>
                <div data-role="fieldcontain">
            <label for= "donorsignupstate" > State :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtdonorsignupstate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please provide your State name" ControlToValidate="txtdonorsignupstate" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rfvRegState" runat="server" ErrorMessage="State name contains only characters" ControlToValidate="txtdonorsignupstate" SetFocusOnError="true" Text="*" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupcountry" > Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtdonorsignupcountry" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please provide your Country name" ControlToValidate="txtdonorsignupcountry" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Country name contains only characters" ControlToValidate="txtdonorsignupcountry" SetFocusOnError="true" Text="*" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupzipcode" > Zip Code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtdonorsignupzipcode" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please provide ZipCode" ControlToValidate="txtdonorsignupzipcode" SetFocusOnError="true" Text="*"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="The zip code must be 5 numeric digits" ControlToValidate="txtdonorsignupzipcode" SetFocusOnError="true" Text="*" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>
            
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignuppassword" > Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <input type="password" ID="txtdonorsignuppassword" Required runat="server" />
                 </div>
            <asp:button ID="btndonorsignup" runat="server" Text="Signup" 
                  onclick="btndonorsignup_Click"/> 

    </div>
     </form>
    <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
   
    </div>
</body>
</html>
