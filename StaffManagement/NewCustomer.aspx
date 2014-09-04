<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewCustomer.aspx.cs" Inherits="StaffManageSystem_NewCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    

     <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="CustomerNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" InsertVisible="False" ReadOnly="True" SortExpression="CustomerNo" />
            <asp:BoundField DataField="userName" HeaderText="User Name" SortExpression="userName" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password"/>
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
            <asp:BoundField DataField="street" HeaderText="Street" SortExpression="street" />
            <asp:BoundField DataField="suburb" HeaderText="Suburb" SortExpression="suburb" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:CheckBoxField DataField="mailingList" HeaderText="MailingList" SortExpression="mailingList" />
            <asp:BoundField DataField="cardNumber" HeaderText="cardNumber" SortExpression="cardNumber" />
            <asp:CommandField ButtonType="Button" InsertText="Save" ShowInsertButton="True">
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerNo] = @CustomerNo" InsertCommand="INSERT INTO [Customer] ([userName], [password], [firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber]) VALUES (@userName, @password, @firstName, @lastName, @DateOfBirth, @street, @suburb, @city, @ContactNo, @email, @mailingList, @cardNumber)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [CustomerNo], [userName], [password], [firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber] FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [userName] = @userName, [password] = @password, [firstName] = @firstName, [lastName] = @lastName, [DateOfBirth] = @DateOfBirth, [street] = @street, [suburb] = @suburb, [city] = @city, [ContactNo] = @ContactNo, [email] = @email, [mailingList] = @mailingList, [cardNumber] = @cardNumber WHERE [CustomerNo] = @CustomerNo">
        <DeleteParameters>
            <asp:Parameter Name="CustomerNo" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="suburb" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mailingList" Type="Boolean" />
            <asp:Parameter Name="cardNumber" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="street" Type="String" />
            <asp:Parameter Name="suburb" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="mailingList" Type="Boolean" />
            <asp:Parameter Name="cardNumber" Type="Decimal" />
            <asp:Parameter Name="CustomerNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

