<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Organizations.aspx.cs" Inherits="Organizations" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
<meta charset="utf-8">
<title>Insta Charity</title>
<link href="styles/main.css" rel="stylesheet" type="text/css">
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.--><script>var __adobewebfontsappname__ = "dreamweaver"</script><script src="http://use.edgefonts.net/source-sans-pro:n2,n6:default.js" type="text/javascript"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="wrapper">
  <header id="top">
    <h1>Insta Charity</h1>
    <nav id="mainnav">
    <ul>
        <li><a href="DonorHome.aspx">Home</a></li>
        <li><a href="#">Our Mission</a></li>
        <li><a href="DonorEvent.aspx">Events</a></li>
        <li><a href="Organizations.aspx">Organizations</a></li>
      </ul>
      <p>&nbsp;</p>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Name" DataSourceID="SqlDataSource2">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    EmailId:
                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                    <br />
                    URL:
                    <asp:Label ID="URLLabel" runat="server" Text='<%# Eval("URL") %>' />
                    <br />
                    MobileNumber:
                    <asp:Label ID="MobileNumberLabel" runat="server" Text='<%# Eval("MobileNumber") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C;color: #FFFFFF;">Name:
                    <asp:Label ID="NameLabel1" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />
                    EmailId:
                    <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                    <br />
                    URL:
                    <asp:TextBox ID="URLTextBox" runat="server" Text='<%# Bind("URL") %>' />
                    <br />
                    MobileNumber:
                    <asp:TextBox ID="MobileNumberTextBox" runat="server" Text='<%# Bind("MobileNumber") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="">Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />Address:
                    <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    <br />EmailId:
                    <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                    <br />URL:
                    <asp:TextBox ID="URLTextBox" runat="server" Text='<%# Bind("URL") %>' />
                    <br />MobileNumber:
                    <asp:TextBox ID="MobileNumberTextBox" runat="server" Text='<%# Bind("MobileNumber") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
<br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="background-color: #DCDCDC;color: #000000;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    EmailId:
                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                    <br />
                    URL:
                    <asp:Label ID="URLLabel" runat="server" Text='<%# Eval("URL") %>' />
                    <br />
                    MobileNumber:
                    <asp:Label ID="MobileNumberLabel" runat="server" Text='<%# Eval("MobileNumber") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Address:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    EmailId:
                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                    <br />
                    URL:
                    <asp:Label ID="URLLabel" runat="server" Text='<%# Eval("URL") %>' />
                    <br />
                    MobileNumber:
                    <asp:Label ID="MobileNumberLabel" runat="server" Text='<%# Eval("MobileNumber") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AseConnectionString %>" SelectCommand="SELECT [Name], [Address], [EmailId], [URL], [MobileNumber] FROM [Organization_Registration] ORDER BY [Name]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </nav>
  </header>
</div>
    </form>
</body>
</html>
