<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="StaffManageSystem_Room" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Rooms</h2>
        <div class="row-fluid">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Room" CssClass="btn btn-primary" OnClick="Button1_Click"/>
           </div>
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowUpdated="Gridview1_RowUpdated" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="roomTypeId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="roomTypeId" HeaderText="RoomTypeID" ReadOnly="True" SortExpression="roomTypeId" />
                <asp:BoundField DataField="typeName" HeaderText="Type Name" SortExpression="typeName" />
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" ItemStyle-Width="400">
<ItemStyle Width="400px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="numOfPeople" HeaderText="Num Of People" SortExpression="numOfPeople" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"  DataFormatString="{0:c}"/>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                <ControlStyle CssClass="btn" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [RoomType] WHERE [roomTypeId] = @roomTypeId" InsertCommand="INSERT INTO [RoomType] ([typeName], [description], [numOfPeople], [price]) VALUES (@typeName, @description, @numOfPeople, @price)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [roomTypeId], [typeName], [description], [numOfPeople], [price] FROM [RoomType]" UpdateCommand="UPDATE [RoomType] SET [typeName] = @typeName, [description] = @description, [numOfPeople] = @numOfPeople, [price] = @price WHERE [roomTypeId] = @roomTypeId">
            <DeleteParameters>
                <asp:Parameter Name="roomTypeId" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="typeName" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="numOfPeople" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="typeName" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="numOfPeople" Type="Int32" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="roomTypeId" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

