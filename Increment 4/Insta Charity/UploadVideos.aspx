<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="UploadVideos.aspx.cs" Inherits="UploadImages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="formUpload" runat="server">
    <h4>Upload Images:</h4>

<h4>&nbsp;</h4>
<div>

    <asp:FileUpload ID="FileUpload1" runat="server"/>

    <asp:Button ID="btnUpload" runat="server" Text="Upload"

        OnClick="btnUpload_Click" />

</div>


<asp:Label runat="server" ID="lblResult" ForeColor="Green"></asp:Label>


</form>

</asp:Content>

