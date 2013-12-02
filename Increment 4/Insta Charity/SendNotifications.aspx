<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="SendNotifications.aspx.cs" Inherits="SendNotifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h4>Send Email Notification to all Donors:</h4>
    <form id="form1" runat="server">
    <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" />
    <asp:Button ID="btnSend" runat="server" Text="Send Email Notification" 
        onclick="btnSend_Click" />
<br />
<asp:Label ID="lblResult" runat="server" ForeColor="Green"></asp:Label>
</form>

</asp:Content>

