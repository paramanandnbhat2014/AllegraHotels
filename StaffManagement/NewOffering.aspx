<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewOffering.aspx.cs" Inherits="StaffManageSystem_NewOffering" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

         <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="offeringId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="offeringId" HeaderText="OfferingId" InsertVisible="False" ReadOnly="True" SortExpression="offeringId" />
            <asp:BoundField DataField="offerName" HeaderText="OfferName" SortExpression="offerName" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="startDate" HeaderText="StartDate" SortExpression="startDate" />
            <asp:BoundField DataField="endDate" HeaderText="EndDate" SortExpression="endDate" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
            <asp:CommandField ButtonType="Button" InsertText="Save" ShowInsertButton="True">
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Offering] WHERE [offeringId] = @offeringId" InsertCommand="INSERT INTO [Offering] ([offerName], [type], [startDate], [endDate], [description], [URL]) VALUES (@offerName, @type, @startDate, @endDate, @description, @URL)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [offeringId], [offerName], [type], [startDate], [endDate], [description], [URL] FROM [Offering]" UpdateCommand="UPDATE [Offering] SET [offerName] = @offerName, [type] = @type, [startDate] = @startDate, [endDate] = @endDate, [description] = @description, [URL] = @URL WHERE [offeringId] = @offeringId">
        <DeleteParameters>
            <asp:Parameter Name="offeringId" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="offerName" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter DbType="Date" Name="startDate" />
            <asp:Parameter DbType="Date" Name="endDate" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="offerName" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter DbType="Date" Name="startDate" />
            <asp:Parameter DbType="Date" Name="endDate" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="offeringId" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

