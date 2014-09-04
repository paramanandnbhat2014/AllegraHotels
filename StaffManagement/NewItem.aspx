<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewItem.aspx.cs" Inherits="StaffManageSystem_NewItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">


       <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />


    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False"  CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="itemNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="itemNo" HeaderText="ItemNo" InsertVisible="False" ReadOnly="True" SortExpression="itemNo" />
            <asp:BoundField DataField="itemName" HeaderText="ItemName" SortExpression="itemName" />
            <asp:BoundField DataField="itemType" HeaderText="ItemType" SortExpression="itemType" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
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





</asp:Content>

