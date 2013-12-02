<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="SearchNearByOrganizations.aspx.cs" Inherits="SearchNearByOrganizations" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
    <h4>Search NearBy Organizations:</h4>
<div data-role="fieldcontain">
    <label>
    Number of Organizations:</label><asp:Label ID="lblcount" runat="server"></asp:Label>
</div>

<div data-role="fieldcontain">
</div>
<cc1:GMap ID="GMap2" runat="server" />
<div data-role="fieldcontain">
<asp:Button runat="server" ID="btnView" Text="View Organization Details" 
        onclick="btnView_Click" />
</div>
</form>
    
</asp:Content>

