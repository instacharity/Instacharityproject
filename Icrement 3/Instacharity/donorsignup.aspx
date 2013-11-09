<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="donorsignup.aspx.cs" Inherits="donorsignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="donorsignupform" runat="server">
       <div data-role ="content" data-theme="b">
              <p> <h2 align="center"> Donor Signup </h2> </p>
              <div data-role="fieldcontain">
            <label for= "donorsignupfirstname" > Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtdonorsignupfirstname" runat="server"></asp:TextBox>
                 </div>
             <div data-role="fieldcontain">
            <label for= "donorsignuplastname" > Emailid :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtdonorsignuplastname" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupemailid" > URL :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtorganizationsignupurl" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupaddress" > Address :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtdonorsignupaddress" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupcity" > City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtdonorsignupcity" runat="server"></asp:TextBox>
                 </div>
                <div data-role="fieldcontain">
            <label for= "donorsignupstate" > State :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtdonorsignupstate" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupcountry" > Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtdonorsignupcountry" runat="server"></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignupzipcode" > Zip Code :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </label>
            <asp:TextBox ID="txtdonorsignupzipcode" runat="server" ></asp:TextBox>
                 </div>
                 <div data-role="fieldcontain">
            <label for= "donorsignuppassword" > Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="txtdonorsignuppassword" runat="server" TextMode= "Password" ></asp:TextBox>
                 </div>
            <asp:button ID="btndonorsignup" runat="server" Text="Signup"/> 
<
    </div>
    </form>
</asp:Content>

