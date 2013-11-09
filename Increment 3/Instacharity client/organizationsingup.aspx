<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="organizationsingup.aspx.cs" Inherits="organizationsingup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="organizationsinupform" runat="server">
    
            <div data-role ="content" data-theme="b">
              <p> <h2 align="center"> Organization Signup </h2> </p>
              <div data-role="fieldcontain">
            <label for= "organizationsignupname" > Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupname" runat="server"></asp:TextBox>
                 </div>
             <div data-role="fieldcontain">
            <label for= "organizationsignupemailid" > Emailid :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupemailid" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupurl" > URL :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupurl" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupaddress" > Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupaddress" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupcity" > City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupcity" runat="server"></asp:TextBox>
                 </div>
                <div data-role="fieldcontain">
            <label for= "organizationsignupstate" > State :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupstate" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupcountry" > Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupcountry" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignupzipcode" > Zip Code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupzipcode" runat="server" ></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "organizationsignuppassword" > Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignuppassword" runat="server" TextMode= "Password" ></asp:TextBox>
                 </div>
            <asp:button ID="btnorganizationsignup" runat="server" Text="Signup"/> 
</div>
    </form>
    
</asp:Content>

