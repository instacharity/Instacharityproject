<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="DonorEditDetails.aspx.cs" Inherits="DonorEditDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<h4>Edit Details:</h4>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmailId" 
        DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="">FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                EmailId:
                <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                ZIP:
                <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <br />
                LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <br />
                EmailId:
                <asp:Label ID="EmailIdLabel1" runat="server" Text='<%# Eval("EmailId") %>' />
                <br />
                Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />
                State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />
                ZIP:
                <asp:TextBox ID="ZIPTextBox" runat="server" Text='<%# Bind("ZIP") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" 
                    Text='<%# Bind("Password") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
            </li>
        </EditItemTemplate>
        <EmptyDataTemplate>
            No data was returned.
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <li style="">FirstName:
                <asp:TextBox ID="FirstNameTextBox" runat="server" 
                    Text='<%# Bind("FirstName") %>' />
                <br />LastName:
                <asp:TextBox ID="LastNameTextBox" runat="server" 
                    Text='<%# Bind("LastName") %>' />
                <br />EmailId:
                <asp:TextBox ID="EmailIdTextBox" runat="server" Text='<%# Bind("EmailId") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />Country:
                <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                <br />ZIP:
                <asp:TextBox ID="ZIPTextBox" runat="server" Text='<%# Bind("ZIP") %>' />
                <br />Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" 
                    Text='<%# Bind("Password") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
            </li>
        </InsertItemTemplate>
        <ItemSeparatorTemplate>
<br />
        </ItemSeparatorTemplate>
        <ItemTemplate>
            <li style="">FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                EmailId:
                <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                ZIP:
                <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </li>
        </ItemTemplate>
        <LayoutTemplate>
            <ul ID="itemPlaceholderContainer" runat="server" style="">
                <li runat="server" id="itemPlaceholder" />
            </ul>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <li style="">FirstName:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                LastName:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                EmailId:
                <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                <br />
                Address:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                <br />
                Country:
                <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                <br />
                ZIP:
                <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:csProject %>" 
        DeleteCommand="DELETE FROM [DonorRegister] WHERE [EmailId] = @EmailId" 
        InsertCommand="INSERT INTO [DonorRegister] ([FirstName], [LastName], [EmailId], [Address], [City], [State], [Country], [ZIP], [Password]) VALUES (@FirstName, @LastName, @EmailId, @Address, @City, @State, @Country, @ZIP, @Password)" 
        SelectCommand="SELECT * FROM [DonorRegister] WHERE ([EmailId] = @EmailId)" 
        UpdateCommand="UPDATE [DonorRegister] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [Country] = @Country, [ZIP] = @ZIP, [Password] = @Password WHERE [EmailId] = @EmailId">
        <DeleteParameters>
            <asp:Parameter Name="EmailId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="EmailId" SessionField="EmailId" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="EmailId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    </form>
    
</asp:Content>

