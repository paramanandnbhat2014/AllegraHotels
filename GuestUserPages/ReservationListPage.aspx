<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationListPage.aspx.cs" Inherits="ReservationListPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Reservation List</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="reservationNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="reservationNo" HeaderText="reservationNo" ReadOnly="True" SortExpression="reservationNo" />
                <asp:CheckBoxField DataField="payment" HeaderText="payment" SortExpression="payment" />
                <asp:BoundField DataField="NumOfRooms" HeaderText="NumOfRooms" SortExpression="NumOfRooms" />
                <asp:BoundField DataField="NumOfGuests" HeaderText="NumOfGuests" SortExpression="NumOfGuests" />
                <asp:BoundField DataField="WhereHeard" HeaderText="WhereHeard" SortExpression="WhereHeard" />
                <asp:BoundField DataField="calculateAmount" HeaderText="calculateAmount" SortExpression="calculateAmount" />
                <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" SortExpression="CustomerNo" />
                <asp:BoundField DataField="reservationDate" HeaderText="reservationDate" SortExpression="reservationDate" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [Reservation] WHERE [reservationNo] = @reservationNo" InsertCommand="INSERT INTO [Reservation] ([payment], [NumOfRooms], [NumOfGuests], [WhereHeard], [calculateAmount], [CustomerNo], [reservationDate]) VALUES (@payment, @NumOfRooms, @NumOfGuests, @WhereHeard, @calculateAmount, @CustomerNo, @reservationDate)" SelectCommand="SELECT [reservationNo], [payment], [NumOfRooms], [NumOfGuests], [WhereHeard], [calculateAmount], [CustomerNo], [reservationDate] FROM [Reservation]" UpdateCommand="UPDATE [Reservation] SET [payment] = @payment, [NumOfRooms] = @NumOfRooms, [NumOfGuests] = @NumOfGuests, [WhereHeard] = @WhereHeard, [calculateAmount] = @calculateAmount, [CustomerNo] = @CustomerNo, [reservationDate] = @reservationDate WHERE [reservationNo] = @reservationNo">
            <DeleteParameters>
                <asp:Parameter Name="reservationNo" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="payment" Type="Boolean" />
                <asp:Parameter Name="NumOfRooms" Type="Decimal" />
                <asp:Parameter Name="NumOfGuests" Type="Decimal" />
                <asp:Parameter Name="WhereHeard" Type="String" />
                <asp:Parameter Name="calculateAmount" Type="Decimal" />
                <asp:Parameter Name="CustomerNo" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="reservationDate" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="payment" Type="Boolean" />
                <asp:Parameter Name="NumOfRooms" Type="Decimal" />
                <asp:Parameter Name="NumOfGuests" Type="Decimal" />
                <asp:Parameter Name="WhereHeard" Type="String" />
                <asp:Parameter Name="calculateAmount" Type="Decimal" />
                <asp:Parameter Name="CustomerNo" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="reservationDate" />
                <asp:Parameter Name="reservationNo" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
