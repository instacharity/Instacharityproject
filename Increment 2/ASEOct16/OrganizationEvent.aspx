<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrganizationEvent.aspx.cs" Inherits="OrganizationEvent" %>

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
        <li><a href="OrganizationHome.aspx">Home</a></li>
        <li><a href="#">Our Mission</a></li>
        <li><a href="#">Events</a></li>
        <li><a href="#">ContactUs</a></li>
      </ul>
      <p>&nbsp;</p>
    </nav>
  </header>


    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            InsertItemPosition="LastItem" 
            onitemcommand="ListView1_ItemCommand"  >
            <LayoutTemplate>
                <table border="0" cellpadding="1">
                    <tr style="background-color:#E5E5FE">
                        <th align="left"><asp:LinkButton ID="lnkId" runat="server" CommandName="Sort" CommandArgument="EventId">EventId</asp:LinkButton></th>
                        <th align="left"><asp:LinkButton ID="lnkName" runat="server" CommandName="Sort" CommandArgument="Name">Name</asp:LinkButton></th>
                        <th align="left"><asp:LinkButton ID="lnkType" runat="server" CommandName="Sort" CommandArgument="Description">Description</asp:LinkButton></th>
                        <th align="left"><asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sort" CommandArgument="Address">Address</asp:LinkButton></th>
                        <th></th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server"></tr>
                </table>
                <asp:DataPager ID="ItemDataPager" runat="server" PageSize="5">
                    <Fields>
                        <asp:NumericPagerField ButtonCount="2" />
                    </Fields>
                </asp:DataPager>    
            </LayoutTemplate>
            <ItemTemplate>
                    <tr>
                        <td><asp:Label runat="server" ID="lblEventId"><%#Eval("EventId") %></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblName"><%#Eval("Name")%></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblDescription"><%#Eval("Description") %></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblAddress"><%#Eval("Address") %></asp:Label></td>
                        <td><asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton></td>
                    </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                    <tr style="background-color:#EFEFEF">
                        <td><asp:Label runat="server" ID="lblEventId"><%#Eval("EventId") %></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblName"><%#Eval("Name")%></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblDescription"><%#Eval("Description") %></asp:Label></td>
                        <td><asp:Label runat="server" ID="lblAddress"><%#Eval("Address") %></asp:Label></td>
                        <td><asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton></td>
                    </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                    <td>
                        <asp:TextBox ID="txtEventId" runat="server" Text='<%#Eval("EventId") %>' Enabled="false" Width="30px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("Name") %>' Width="100px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Text='<%#Eval("Description") %>' Width="100px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" Width="100px" Text='<%#Eval("Address") %>'></asp:TextBox>
                     </td>
                     <td>   
                            <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                            <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                            <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </td>
                    
                </tr>
            </EditItemTemplate>
            <InsertItemTemplate>
                <tr id="Tr1" runat="server">
                    <td>
                    </td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("Name") %>' Width="100px">Name</asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtdescription" runat="server" Text='<%#Eval("Description") %>' Width="100px">Description</asp:TextBox>
                    </td>
                    <td><asp:TextBox ID="txtaddress" runat="server" Text='<%#Eval("Address") %>' Width="100px">Address</asp:TextBox></td>
                     <td><asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" /></td>
                    
                </tr>
            </InsertItemTemplate>
            
        </asp:ListView>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AseConnectionString %>" SelectCommand="SELECT [EventId], [Name], [Description], [Address] FROM [Event]"></asp:SqlDataSource>

</div>
    </form>
</body>
</html>
