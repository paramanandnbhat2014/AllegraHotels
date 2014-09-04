<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="Packages.aspx.cs" Inherits="StaffManageSystem_Packages"   EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Packages</h2>

         <div class="row container">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Package" CssClass="btn btn-primary" OnClick="Button1_Click"/>
             <asp:Button ID="Button2" runat="server" Text="Show package offerings" CssClass="btn" OnClick="showOffering_Click"/>
          <asp:LinkButton ID="lnkExportWFormat" runat="server" onclick="lnkExportFormat_Click" Text="Export to PDF" CssClass="btn btn-warning" Style="float:right"/>
  
         </div>
       <br />
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowUpdated="Gridview1_RowUpdated" Width="960px" CellPadding="4" DataKeyNames="packageNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="packageNo" HeaderText="PackageNo" ReadOnly="True" SortExpression="packageNo" />
            <asp:BoundField DataField="roomTypeId" HeaderText="RoomTypeID" SortExpression="roomTypeId" />
            <asp:BoundField DataField="packageName" HeaderText="Package Name" SortExpression="packageName" />
            <asp:CheckBoxField DataField="availableStatus" HeaderText="Available Status" SortExpression="availableStatus" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" DataFormatString="{0:c}"/>
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="offeringId" HeaderText="OfferingID" SortExpression="offeringId" />
           
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
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Package] WHERE [packageNo] = @packageNo" InsertCommand="INSERT INTO [Package] ([roomTypeId], [packageName], [availableStatus], [price], [description], [offeringId]) VALUES (@roomTypeId, @packageName, @availableStatus, @price, @description, @offeringId)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT p.packageNo, p.roomTypeId, p.packageName, p.availableStatus, p.price, p.description, p.offeringId, o.offerName, o.type, o.startDate, o.endDate, r.typeName FROM Package AS p INNER JOIN Offering AS o ON p.offeringId = o.offeringId INNER JOIN RoomType AS r ON p.roomTypeId = r.roomTypeId" UpdateCommand="UPDATE [Package] SET [roomTypeId] = @roomTypeId, [packageName] = @packageName, [availableStatus] = @availableStatus, [price] = @price, [description] = @description, [offeringId] = @offeringId WHERE [packageNo] = @packageNo">
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
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="roomTypeId" Type="Decimal" />
            <asp:Parameter Name="packageName" Type="String" />
            <asp:Parameter Name="availableStatus" Type="Boolean" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="offeringId" Type="Decimal" />
            <asp:Parameter Name="packageNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container">
        <hr />
    </div>
    <h5><asp:Label ID="packageOffering" runat="server" Text="Package Offerings"></asp:Label></h5>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="packageNo" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="packageNo" HeaderText="packageNo" InsertVisible="False" ReadOnly="True" SortExpression="packageNo" />
            <asp:BoundField DataField="packageName" HeaderText="packageName" SortExpression="packageName" ItemStyle-Width="50px">
<ItemStyle Width="50px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="offeringId" HeaderText="offeringId" SortExpression="offeringId"  ItemStyle-Width="50px">
<ItemStyle Width="50px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="offerName" HeaderText="offerName" SortExpression="offerName" ItemStyle-Width="50px">
<ItemStyle Width="50px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate"  DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="endDate" HeaderText="endDate" SortExpression="endDate"  DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" ItemStyle-Width="300px">
<ItemStyle Width="300px"></ItemStyle>
            </asp:BoundField>
            <asp:HyperLinkField DataTextField="URL" HeaderText="URL" SortExpression="URL" DataNavigateUrlFields="URL" ItemStyle-Width="60" >
<ItemStyle Width="60px"></ItemStyle>
            </asp:HyperLinkField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageNo, packageName, p.offeringId, offerName, type, startDate, endDate, o.description, URL
FROM Offering o, Package p
WHERE o.offeringId = p.offeringId;"></asp:SqlDataSource>
</asp:Content>

