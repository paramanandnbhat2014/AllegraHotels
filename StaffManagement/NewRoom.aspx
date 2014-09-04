<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewRoom.aspx.cs" Inherits="StaffManageSystem_NewRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

         <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="RoomNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" InsertVisible="False" ReadOnly="True" SortExpression="RoomNo" />
            <asp:BoundField DataField="roomTypeId" HeaderText="RoomTypeId" SortExpression="roomTypeId" />
            <asp:BoundField DataField="branchNo" HeaderText="BranchNo" SortExpression="branchNo" />
            <asp:CheckBoxField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:BoundField DataField="checkOutDate" HeaderText="CheckOutDate" SortExpression="checkOutDate" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Room] WHERE [RoomNo] = @RoomNo" InsertCommand="INSERT INTO [Room] ([roomTypeId], [branchNo], [status], [checkOutDate]) VALUES (@roomTypeId, @branchNo, @status, @checkOutDate)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [RoomNo], [roomTypeId], [branchNo], [status], [checkOutDate] FROM [Room]" UpdateCommand="UPDATE [Room] SET [roomTypeId] = @roomTypeId, [branchNo] = @branchNo, [status] = @status, [checkOutDate] = @checkOutDate WHERE [RoomNo] = @RoomNo">
        <DeleteParameters>
            <asp:Parameter Name="RoomNo" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="roomTypeId" Type="Decimal" />
            <asp:Parameter Name="branchNo" Type="Decimal" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="checkOutDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomTypeId" Type="Decimal" />
            <asp:Parameter Name="branchNo" Type="Decimal" />
            <asp:Parameter Name="status" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="checkOutDate" />
            <asp:Parameter Name="RoomNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

