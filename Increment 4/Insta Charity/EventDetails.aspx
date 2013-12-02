<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="EventDetails.aspx.cs" Inherits="EventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<h4>Event Details:</h4>

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="EventID" 
        DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <li style="">EventID:
                <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                <br />
                OrganizationEmailId:
                <asp:Label ID="OrganizationEmailIdLabel" runat="server" 
                    Text='<%# Eval("OrganizationEmailId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
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
                ZIP:
                <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">EventID:
                <asp:Label ID="EventIDLabel1" runat="server" Text='<%# Eval("EventID") %>' />
                <br />
                OrganizationEmailId:
                <asp:TextBox ID="OrganizationEmailIdTextBox" runat="server" 
                    Text='<%# Bind("OrganizationEmailId") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />
                Date:
                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
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
                ZIP:
                <asp:TextBox ID="ZIPTextBox" runat="server" Text='<%# Bind("ZIP") %>' />
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
            <li style="">OrganizationEmailId:
                <asp:TextBox ID="OrganizationEmailIdTextBox" runat="server" 
                    Text='<%# Bind("OrganizationEmailId") %>' />
                <br />Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Date:
                <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />
                ZIP:
                <asp:TextBox ID="ZIPTextBox" runat="server" Text='<%# Bind("ZIP") %>' />
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
            <li style="">EventID:
                <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                <br />
                OrganizationEmailId:
                <asp:Label ID="OrganizationEmailIdLabel" runat="server" 
                    Text='<%# Eval("OrganizationEmailId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
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
                ZIP:
                <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
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
            <li style="">EventID:
                <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                <br />
                OrganizationEmailId:
                <asp:Label ID="OrganizationEmailIdLabel" runat="server" 
                    Text='<%# Eval("OrganizationEmailId") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />
                Date:
                <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
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
                ZIP:
                <asp:Label ID="ZIPLabel" runat="server" Text='<%# Eval("ZIP") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                    Text="Delete" />
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:csProject %>" 
        DeleteCommand="DELETE FROM [Event] WHERE [EventID] = @EventID" 
        InsertCommand="INSERT INTO [Event] ([OrganizationEmailId], [Name], [Description], [Date], [Address], [City], [State], [ZIP]) VALUES (@OrganizationEmailId, @Name, @Description, @Date, @Address, @City, @State, @ZIP)" 
        SelectCommand="SELECT * FROM [Event] WHERE ([OrganizationEmailId] = @OrganizationEmailId)" 
        
        
        
        UpdateCommand="UPDATE [Event] SET [OrganizationEmailId] = @OrganizationEmailId, [Name] = @Name, [Description] = @Description, [Date] = @Date, [Address] = @Address, [City] = @City, [State] = @State, [ZIP] = @ZIP WHERE [EventID] = @EventID">
        <DeleteParameters>
            <asp:Parameter Name="EventID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrganizationEmailId" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="OrganizationEmailId" 
                SessionField="OrganizationEmailId" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrganizationEmailId" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="ZIP" Type="String" />
            <asp:Parameter Name="EventID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>

</asp:Content>

