<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="ViewEventDetails.aspx.cs" Inherits="ViewEventDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<label>Event Details:</label>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <li style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
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
            </li>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <li style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
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
            <li style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Address:
                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />City:
                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                <br />State:
                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                <br />ZIP:
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
            <li style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
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
            <li style="">Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
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
            </li>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:csProject %>" 
        SelectCommand="SELECT [Name], [Description], [Address], [City], [State], [ZIP] FROM [Event] WHERE ([ZIP] = @ZIP) ORDER BY [EventID]">
        <SelectParameters>
            <asp:SessionParameter Name="ZIP" SessionField="ZipCode" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</asp:Content>

