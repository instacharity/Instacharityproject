<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="mainpage.aspx.cs" Inherits="mainpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="mainpageform" runat="server">
        <div data-role ="content" data-theme="b">
        <div data-role = "collapsible" data-collapsed= "true">
        <h2> What is Insta Charity? </h2>
        <img src ="images/charity.jpg" alt="Logo" style="float:center;display:inline; padding-left: 450px;"/>
        <script>
            $('#slide').cycle({
                fx: 'turnDown',
                delay: -4000
            });
        </script>
        <p> <b><img src="http://officeimg.vo.msecnd.net/en-us/files/659/986/ZA006053931.gif" alt="Tab character"/> Insta Charity is a donation platform that allows you to support a cause of your choice from Organizations that have been scrutinised for transparency & credibility.
        <br /><img src="http://officeimg.vo.msecnd.net/en-us/files/659/986/ZA006053931.gif" alt="Tab character"/> We do not raise funds for ourseleves. We help you donate to these Organizations.
        <br /> <img src="http://officeimg.vo.msecnd.net/en-us/files/659/986/ZA006053931.gif" alt="Tab character"/> Choice of cause and donation entirely yours.
        <br /> <img src="http://officeimg.vo.msecnd.net/en-us/files/659/986/ZA006053931.gif" alt="Tab character"/> Money guarranteed to reach the needy.</b></p>
        </div>
        
        <a href ="donorlogin.aspx", data-role="button", data-theme ="e">Login as Donor</a>
        <a href ="organizationlogin.aspx", data-role="button", data-theme ="e">Login as a Organization</a>
        </div>     
    
    </form>
    
</asp:Content>

