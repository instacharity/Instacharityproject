<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="donorlogin.aspx.cs" Inherits="donorlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="donorloginform" runat="server">
           <div data-role ="content" data-theme="b">
           <p> <h2 align="center"> Login </h2></p>
             <div data-role="fieldcontain">
            <label for= "donoremailid" > Email ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtdonoremailid" runat="server"></asp:TextBox>
                 </label>
                 </div>
            <div data-role ="fieldcontain">
                <label for="donorloginpassword"> Password :&nbsp;&nbsp;&nbsp; </label>
                <asp:TextBox ID="txtdonorloginpassword" runat="server" textmode= "password"></asp:TextBox>
            </div>
            <asp:button ID="btndonorlogin" runat="server" Text="Login"/> 
       <p> Not yet registered ? <a href =donorsignup.aspx> Click here to signup </a></p>
              
</div>
    
    </form>
</asp:Content>

