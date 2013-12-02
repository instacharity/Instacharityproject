<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="SearchNearByEvents.aspx.cs" Inherits="SearchNearByEvents" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <h4>Search NearBy Events:</h4>
<div data-role="fieldcontain">
</div>
<div data-role="fieldcontain">
<label>Number of Events:</label><asp:Label ID="lblcount" runat="server"></asp:Label>
</div>

<div data-role="fieldcontain">
</div>
<cc1:GMap ID="GMap2" runat="server" />

<div data-role = "fieldcontain">
<asp:button ID="btnEvent" runat="server" Text="View Event Details" 
        onclick="btnEvent_Click" />
</div>
</form>
</asp:Content>

