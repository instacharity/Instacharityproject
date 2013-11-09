<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="organizationlogin.aspx.cs" Inherits="organizationlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form id="organizationloginform" runat="server">
           <div data-role ="content" data-theme="b">
           <p> <h2 align="center"> Login </h2></p>
             <div data-role="fieldcontain">
            <label for= "organizationemailid" > Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtorganizationemailid" runat="server"></asp:TextBox>
                 </label>
                 </div>
            <div data-role ="fieldcontain">
                <label for="organizationloginpassword"> Password :&nbsp;&nbsp;&nbsp; </label>
                <asp:TextBox ID="txtorganizationloginpassword" runat="server" textmode= "password"></asp:TextBox>
            </div>
            <asp:button ID="btnorganizationlogin" runat="server" Text="Login"/> 
    <p> Not yet registered ? <a href=organizationsingup.aspx> Click here to signup </a></p>
              
</div>
     </form>
</asp:Content>

