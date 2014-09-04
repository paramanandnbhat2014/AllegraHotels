<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewStaff.aspx.cs" Inherits="StaffManageSystem_NewStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

         <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="staffNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="staffNo" HeaderText="StaffNo" InsertVisible="False" ReadOnly="True" SortExpression="staffNo" />
            <asp:BoundField DataField="userName" HeaderText="UserName" SortExpression="userName" />
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="firstName" HeaderText="FirstName" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="LastName" SortExpression="lastName" />
            <asp:BoundField DataField="phoneNo" HeaderText="PhoneNo" SortExpression="phoneNo" />
            <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            <asp:BoundField DataField="branchNo" HeaderText="BranchNo" SortExpression="branchNo" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Staff] WHERE [staffNo] = @staffNo" InsertCommand="INSERT INTO [Staff] ([userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo]) VALUES (@userName, @password, @firstName, @lastName, @phoneNo, @position, @branchNo)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [staffNo], [userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo] FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [userName] = @userName, [password] = @password, [firstName] = @firstName, [lastName] = @lastName, [phoneNo] = @phoneNo, [position] = @position, [branchNo] = @branchNo WHERE [staffNo] = @staffNo">
        <DeleteParameters>
            <asp:Parameter Name="staffNo" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="branchNo" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userName" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="branchNo" Type="Decimal" />
            <asp:Parameter Name="staffNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

