<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="SendVolunteerNotification.aspx.cs" Inherits="SendVolunteerNotification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>Send Notification to Volunteers:</h4>
<form id="form1" runat="server">
<label>Select Event:</label>
<asp:DropDownList ID="ddlEventName" runat="server" 
    DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:csProject %>" 
    
    SelectCommand="SELECT [Name] FROM [Event] WHERE ([OrganizationEmailId] = @OrganizationEmailId)">
    <SelectParameters>
        <asp:SessionParameter Name="OrganizationEmailId" 
            SessionField="OrganizationEmailId" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<br />
<label>Description:</label>
<asp:TextBox ID="txtbody" runat="server" TextMode="MultiLine"></asp:TextBox>
<br />
<asp:button ID="btnSend" Text="Send Notification" runat="server" 
    onclick="btnSend_Click" />
    <br />
<asp:Label ID="lblResult" ForeColor="Green" runat="server"></asp:Label>
</form>
</asp:Content>

