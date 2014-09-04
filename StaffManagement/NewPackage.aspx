<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewPackage.aspx.cs" Inherits="StaffManageSystem_NewPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

         <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="packageNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="packageNo" HeaderText="PackageNo" InsertVisible="False" ReadOnly="True" SortExpression="packageNo" />
            <asp:BoundField DataField="roomTypeId" HeaderText="RoomTypeId" SortExpression="roomTypeId" />
            <asp:BoundField DataField="packageName" HeaderText="PackageName" SortExpression="packageName" />
            <asp:CheckBoxField DataField="availableStatus" HeaderText="AvailableStatus" SortExpression="availableStatus" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="offeringId" HeaderText="OfferingId" SortExpression="offeringId" />
            <asp:BoundField DataField="img" HeaderText="Img" SortExpression="img" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Package] WHERE [packageNo] = @packageNo" InsertCommand="INSERT INTO [Package] ([roomTypeId], [packageName], [availableStatus], [price], [description], [offeringId], [img]) VALUES (@roomTypeId, @packageName, @availableStatus, @price, @description, @offeringId, @img)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [packageNo], [roomTypeId], [packageName], [availableStatus], [price], [description], [offeringId], [img] FROM [Package]" UpdateCommand="UPDATE [Package] SET [roomTypeId] = @roomTypeId, [packageName] = @packageName, [availableStatus] = @availableStatus, [price] = @price, [description] = @description, [offeringId] = @offeringId, [img] = @img WHERE [packageNo] = @packageNo">
        <DeleteParameters>
            <asp:Parameter Name="packageNo" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomTypeId" Type="Decimal" />
            <asp:Parameter Name="packageName" Type="String" />
            <asp:Parameter Name="availableStatus" Type="Boolean" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="offeringId" Type="Decimal" />
            <asp:Parameter Name="img" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomTypeId" Type="Decimal" />
            <asp:Parameter Name="packageName" Type="String" />
            <asp:Parameter Name="availableStatus" Type="Boolean" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="offeringId" Type="Decimal" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="packageNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

