<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Hotel.aspx.cs" Inherits="StaffManageSystem_Hotel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Hotels</h2>
        <div class="row-fluid">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Hotel" CssClass="btn btn-primary" OnClick="Button1_Click"/>
           </div>
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="branchNo" DataSourceID="SqlDataSource1" OnRowUpdated="Gridview1_RowUpdated" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="branchNo" HeaderText="Branch No." ReadOnly="True" SortExpression="branchNo" />
                <asp:BoundField DataField="branchName" HeaderText="Branch Name" SortExpression="branchName" />
                <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                <asp:BoundField DataField="Suburb" HeaderText="Suburb" SortExpression="Suburb" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="phoneNo" HeaderText="Contact No." SortExpression="phoneNo" />
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
    </p>

</asp:Content>

