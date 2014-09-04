<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Item.aspx.cs" Inherits="Reservation_Item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Items</h2>
     <div class="row-fluid">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Item" CssClass="btn btn-primary" OnClick="Button1_Click"/>
           </div>
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowUpdated="Gridview1_RowUpdated" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="itemNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="itemNo" HeaderText="ItemNo" ReadOnly="True" SortExpression="itemNo" />
                <asp:BoundField DataField="itemName" HeaderText="Item Name" SortExpression="itemName" />
                <asp:BoundField DataField="itemType" HeaderText="Item Type" SortExpression="itemType" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Item] WHERE [itemNo] = @itemNo" InsertCommand="INSERT INTO [Item] ([itemName], [itemType], [price]) VALUES (@itemName, @itemType, @price)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [itemNo], [itemName], [itemType], [price] FROM [Item]" UpdateCommand="UPDATE [Item] SET [itemName] = @itemName, [itemType] = @itemType, [price] = @price WHERE [itemNo] = @itemNo">
            <DeleteParameters>
                <asp:Parameter Name="itemNo" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="itemName" Type="String" />
                <asp:Parameter Name="itemType" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="itemName" Type="String" />
                <asp:Parameter Name="itemType" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="itemNo" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

