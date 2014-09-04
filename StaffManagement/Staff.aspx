<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Reservation_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Staff</h2>

         <div class="row-fluid">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Staff" CssClass="btn btn-primary" OnClick="Button1_Click"/>
           </div>
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <p>
        <asp:GridView ID="GridView1" runat="server" OnRowUpdated="Gridview1_RowUpdated" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="staffNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="staffNo" HeaderText="StaffNo" ReadOnly="True" SortExpression="staffNo" />
                <asp:BoundField DataField="userName" HeaderText="User Name" SortExpression="userName" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="phoneNo" HeaderText="PhoneNo" SortExpression="phoneNo" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:BoundField DataField="branchNo" HeaderText="BranchNo" SortExpression="branchNo" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
                <ControlStyle CssClass="btn" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Staff] WHERE [staffNo] = @staffNo" InsertCommand="INSERT INTO [Staff] ([userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo]) VALUES (@userName, @password, @firstName, @lastName, @phoneNo, @position, @branchNo)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [staffNo], [userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo] FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [userName] = @userName, [password] = @password, [firstName] = @firstName, [lastName] = @lastName, [phoneNo] = @phoneNo, [position] = @position, [branchNo] = @branchNo WHERE [staffNo] = @staffNo">
            <DeleteParameters>
                <asp:Parameter Name="staffNo" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="phoneNo" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="branchNo" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="phoneNo" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="branchNo" Type="Decimal" />
                <asp:Parameter Name="staffNo" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <div class="container">
        <hr />
        <h5>Other Staff</h5>
    </div>   
    
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="staffNo" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="700px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="staffNo" HeaderText="StaffNo" ReadOnly="True" SortExpression="staffNo" />
                <asp:BoundField DataField="userName" HeaderText="User Name" SortExpression="userName" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="phoneNo" HeaderText="PhoneNo" SortExpression="phoneNo" />
                <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
                <asp:BoundField DataField="branchNo" HeaderText="BranchNo" SortExpression="branchNo" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Staff] WHERE [staffNo] = @staffNo" InsertCommand="INSERT INTO [Staff] ([userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo]) VALUES (@userName, @password, @firstName, @lastName, @phoneNo, @position, @branchNo)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [staffNo], [userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo] FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [userName] = @userName, [password] = @password, [firstName] = @firstName, [lastName] = @lastName, [phoneNo] = @phoneNo, [position] = @position, [branchNo] = @branchNo WHERE [staffNo] = @staffNo">
            <DeleteParameters>
                <asp:Parameter Name="staffNo" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="phoneNo" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="branchNo" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="phoneNo" Type="String" />
                <asp:Parameter Name="position" Type="String" />
                <asp:Parameter Name="branchNo" Type="Decimal" />
                <asp:Parameter Name="staffNo" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>


</asp:Content>

