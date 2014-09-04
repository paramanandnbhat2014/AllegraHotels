<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="Offering.aspx.cs" Inherits="StaffManageSystem_Offering" EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Offerings</h2>
    <div class="row container">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Offer" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        <asp:LinkButton ID="lnkExportWFormat" runat="server" onclick="lnkExportFormat_Click" Text="Export to PDF" CssClass="btn btn-warning" Style="float:right"/>
           </div>
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowUpdated="Gridview1_RowUpdated"  AutoGenerateColumns="False" CellPadding="4" DataKeyNames="offeringId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="offeringId" HeaderText="OfferingId" ReadOnly="True" SortExpression="offeringId" InsertVisible="False" />
                <asp:BoundField DataField="offerName" HeaderText="Offer Name" SortExpression="offerName" ItemStyle-Width="100">
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                <asp:BoundField DataField="startDate" HeaderText="Start Date" SortExpression="startDate" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="endDate" HeaderText="End Date" SortExpression="endDate" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" ItemStyle-Width="400">
<ItemStyle Width="400px"></ItemStyle>
                </asp:BoundField>
                <asp:HyperLinkField DataTextField="URL" HeaderText="URL" SortExpression="URL" DataNavigateUrlFields="URL" ItemStyle-Width="60">
<ItemStyle Width="60px"></ItemStyle>
                </asp:HyperLinkField>
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

        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Offering] WHERE [offeringId] = @offeringId" InsertCommand="INSERT INTO [Offering] ([offerName], [type], [startDate], [endDate], [description], [URL]) VALUES (@offerName, @type, @startDate, @endDate, @description, @URL)" SelectCommand="SELECT [offeringId], [offerName], [type], [startDate], [endDate], [description], [URL] FROM [Offering]" UpdateCommand="UPDATE [Offering] SET [offerName] = @offerName, [type] = @type, [startDate] = @startDate, [endDate] = @endDate, [description] = @description, [URL] = @URL WHERE [offeringId] = @offeringId">
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
           
    </p>

</asp:Content>

