<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="ReservationManagement.aspx.cs" Inherits="StaffManageSystem_ReservationManagement"  EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Reservation</h2>
        <div class="row container">
        <br />
            <asp:Button ID="Button1" runat="server" Text="New Reservation" CssClass="btn btn-primary" OnClick="Button1_Click"/>
            <asp:Button ID="currentMonth" runat="server" Text="Current Month Reservation" OnClick="currentMonth_Click" CssClass="btn" />
            <asp:Button ID="allMonth" runat="server" Text="All Months Reservation" OnClick="allMonth_Click" CssClass="btn" />
        <asp:LinkButton ID="lnkExportWFormat" runat="server" onclick="lnkExportFormat_Click" Text="Export to PDF" CssClass="btn btn-warning" Style="float:right"/>   
        </div>
       <br />
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <asp:GridView ID="GridView1" runat="server" OnRowUpdated="Gridview1_RowUpdated" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="reservationNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="reservationNo" HeaderText="ReservationNo" ReadOnly="True" SortExpression="reservationNo" />
            <asp:CheckBoxField DataField="payment" HeaderText="Paid" SortExpression="payment" />
            <asp:BoundField DataField="NumOfRooms" HeaderText="NumOfRooms" SortExpression="NumOfRooms" />
            <asp:BoundField DataField="NumOfGuests" HeaderText="NumOfGuests" SortExpression="NumOfGuests" />
            <asp:BoundField DataField="WhereHeard" HeaderText="WhereHeard" SortExpression="WhereHeard" />
            <asp:BoundField DataField="calculateAmount" HeaderText="CalculateAmount" SortExpression="calculateAmount" DataFormatString="{0:c}"/>
            <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" SortExpression="CustomerNo" />
            <asp:BoundField DataField="reservationDate" HeaderText="ReservationDate" SortExpression="reservationDate" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Reservation] WHERE [reservationNo] = @reservationNo" InsertCommand="INSERT INTO [Reservation] ([payment], [NumOfRooms], [NumOfGuests], [WhereHeard], [calculateAmount], [CustomerNo], [reservationDate]) VALUES (@payment, @NumOfRooms, @NumOfGuests, @WhereHeard, @calculateAmount, @CustomerNo, @reservationDate)" SelectCommand="SELECT * FROM [Reservation]" UpdateCommand="UPDATE [Reservation] SET [payment] = @payment, [NumOfRooms] = @NumOfRooms, [NumOfGuests] = @NumOfGuests, [WhereHeard] = @WhereHeard, [calculateAmount] = @calculateAmount, [CustomerNo] = @CustomerNo, [reservationDate] = @reservationDate WHERE [reservationNo] = @reservationNo">
        <DeleteParameters>
            <asp:Parameter Name="reservationNo" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="payment" Type="Boolean" />
            <asp:Parameter Name="NumOfRooms" Type="Int32" />
            <asp:Parameter Name="NumOfGuests" Type="Int32" />
            <asp:Parameter Name="WhereHeard" Type="String" />
            <asp:Parameter Name="calculateAmount" Type="Decimal" />
            <asp:Parameter Name="CustomerNo" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="reservationDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="payment" Type="Boolean" />
            <asp:Parameter Name="NumOfRooms" Type="Int32" />
            <asp:Parameter Name="NumOfGuests" Type="Int32" />
            <asp:Parameter Name="WhereHeard" Type="String" />
            <asp:Parameter Name="calculateAmount" Type="Decimal" />
            <asp:Parameter Name="CustomerNo" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="reservationDate" />
            <asp:Parameter Name="reservationNo" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>

