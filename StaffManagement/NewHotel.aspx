<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewHotel.aspx.cs" Inherits="StaffManageSystem_NewHotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

     <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="branchNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="branchNo" HeaderText="BranchNo" InsertVisible="False" ReadOnly="True" SortExpression="branchNo" />
            <asp:BoundField DataField="branchName" HeaderText="BranchName" SortExpression="branchName" />
            <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
            <asp:BoundField DataField="Suburb" HeaderText="Suburb" SortExpression="Suburb" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="phoneNo" HeaderText="PhoneNo" SortExpression="phoneNo" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Hotel] WHERE [branchNo] = @branchNo" InsertCommand="INSERT INTO [Hotel] ([branchName], [Street], [Suburb], [City], [phoneNo]) VALUES (@branchName, @Street, @Suburb, @City, @phoneNo)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [branchNo], [branchName], [Street], [Suburb], [City], [phoneNo] FROM [Hotel]" UpdateCommand="UPDATE [Hotel] SET [branchName] = @branchName, [Street] = @Street, [Suburb] = @Suburb, [City] = @City, [phoneNo] = @phoneNo WHERE [branchNo] = @branchNo">
        <DeleteParameters>
            <asp:Parameter Name="branchNo" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="branchName" Type="String" />
            <asp:Parameter Name="Street" Type="String" />
            <asp:Parameter Name="Suburb" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="branchName" Type="String" />
            <asp:Parameter Name="Street" Type="String" />
            <asp:Parameter Name="Suburb" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="phoneNo" Type="String" />
            <asp:Parameter Name="branchNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>

