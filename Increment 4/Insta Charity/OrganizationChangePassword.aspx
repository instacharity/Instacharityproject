<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrganizationChangePassword.aspx.cs" Inherits="OrganizationChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insta charity</title>
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: Arial">
    <div data-role= "header"  data-theme ="b">


             <h1> Insta Charity </h1>
</div>
<div data-role= "content">

   
        <td colspan="2">
            <b>Change Password</b>
        </td>
   
       <div data-role = "field contain">
       <label for = "NewPassword"> New Password</label>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtOrganizationNewPassword" TextMode="Password" 
            runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPassword" 
                runat="server" ErrorMessage="New Password required"
                Text="*" ControlToValidate="txtOrganizationNewPassword" ForeColor="Red">
            </asp:RequiredFieldValidator>
   </div>
       <div data-role= "field contain">
           <label for = "ConfirmNewPassword"> Confirm New Password:&nbsp; </label>
       
       <asp:TextBox ID="txtOrganizationConfirmNewPassword" TextMode="Password" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmNewPassword" 
                runat="server" ErrorMessage="Confirm New Password required" Text="*" 
                ControlToValidate="txtOrganizationConfirmNewPassword"
                ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
                ErrorMessage="New Password and Confirm New Password must match"
                ControlToValidate="txtOrganizationConfirmNewPassword" ForeColor="Red" 
                ControlToCompare="txtOrganizationNewPassword"
                Display="Dynamic" Type="String" Operator="Equal" Text="*">
            </asp:CompareValidator>
     </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
        <asp:Button ID="btnOrganizationSave" runat="server" 
            Text="Save" onclick="btnOrganizationSave_Click"/>
     
        <br />
     
        <td colspan="2">
            <asp:Label ID="lblMessage" runat="server">
            </asp:Label>
        </td>
       <td colspan="2">
            <br />
        <br />
            <a href= "mainpage.aspx" runat="server"> Go to Home</a>
            <asp:ValidationSummary ID="ValidationSummary1" 
            ForeColor="Red" runat="server" />
        </td>
  
  <div data-role ="footer" data-theme ="b">
            <h4> @ UMKC ASE Project </h4></div>
            </div>
</div>
    </form>
</body>
</body>
</html>
