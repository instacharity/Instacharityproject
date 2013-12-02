<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="JoinVolunteer.aspx.cs" Inherits="JoinVolunteer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>Enter your Details:</h4>
    
<form id="form1" runat="server">
<asp:Label ID="lblResult" runat="server"></asp:Label>
<div data-role = "fieldcontain">
<label>Select Event:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlEvent" runat="server" DataSourceID="SqlDataSource1" 
        DataTextField="Name" DataValueField="Name"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:csProject %>" 
        SelectCommand="SELECT [Name] FROM [Event] ORDER BY [Name]">
    </asp:SqlDataSource>
</div>

<div data-role="fieldcontain">
<label>Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
<input type="text" runat="server" id="txtName" Required />
</div>
<div data-role="fieldcontain">
<label>MobileNumber:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
<input type="text" runat="server" id="txtMobileNum" Required />
</div>
<div data-role="fieldcontain">
<label>EmailId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
<input type="text" runat="server" id="txtEmailId" Required />
</div>
<div data-role="fieldcontain">
<label>City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" runat="server" id="txtCity" Required />
</div>
<div data-role="fieldcontain">
<label>ZIP:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
<input type="text" runat="server" id="txtZIP" Required />
</div>
<asp:Button runat="server" Text="Join as Volunteer" ID="btnJoin" 
    onclick="btnJoin_Click" />
</form>
</asp:Content>

