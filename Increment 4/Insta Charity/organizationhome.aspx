<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="organizationhome.aspx.cs" Inherits="organizationhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ul data-role="listview" data-filter='true'>

        <li><a href="EditOrganizationDetails.aspx">Edit Profile</a></li>
        <li><a href="EventDetails.aspx">Events</a></li>
        <li><a href="SendNotifications.aspx">Send Notifications</a></li>
        <li><a href="SendVolunteerNotification.aspx">Send Volunteer Notifications</a></li>
        <li><a href="additem.aspx">Give Away</a></li>
        <li><a href="DisplayItems.aspx">Display Give Away Items</a></li>
        <li><a href="UploadVideos.aspx">Upload Videos</a></li>
    </ul>
    
</asp:Content>

