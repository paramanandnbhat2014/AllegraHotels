<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="NewReservation.aspx.cs" Inherits="StaffManageSystem_NewReservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

         <asp:Label
        id="lblError"
        Text="Could not insert record"
        Visible="false"
        EnableViewState="false"
        CssClass="error"
        Runat="server" />

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand" DataKeyNames="reservationNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="reservationNo" HeaderText="ReservationNo" InsertVisible="False" ReadOnly="True" SortExpression="reservationNo" />
            <asp:BoundField DataField="NumOfRooms" HeaderText="NumOfRooms" SortExpression="NumOfRooms" />
            <asp:BoundField DataField="NumOfGuests" HeaderText="NumOfGuests" SortExpression="NumOfGuests" />
            <asp:BoundField DataField="WhereHeard" HeaderText="WhereHeard" SortExpression="WhereHeard" />
            <asp:BoundField DataField="calculateAmount" HeaderText="CalculateAmount" SortExpression="calculateAmount" />
            <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" SortExpression="CustomerNo" />
            <asp:BoundField DataField="reservationDate" HeaderText="ReservationDate" SortExpression="reservationDate" />
            <asp:CheckBoxField DataField="payment" HeaderText="Paid" SortExpression="payment" />
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" >
            <ControlStyle CssClass="btn" />
            </asp:CommandField>
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Reservation] WHERE [reservationNo] = @reservationNo" InsertCommand="INSERT INTO [Reservation] ([payment], [NumOfRooms], [NumOfGuests], [WhereHeard], [calculateAmount], [CustomerNo], [reservationDate]) VALUES (@payment, @NumOfRooms, @NumOfGuests, @WhereHeard, @calculateAmount, @CustomerNo, @reservationDate)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [reservationNo], [payment], [NumOfRooms], [NumOfGuests], [WhereHeard], [calculateAmount], [CustomerNo], [reservationDate] FROM [Reservation]" UpdateCommand="UPDATE [Reservation] SET [payment] = @payment, [NumOfRooms] = @NumOfRooms, [NumOfGuests] = @NumOfGuests, [WhereHeard] = @WhereHeard, [calculateAmount] = @calculateAmount, [CustomerNo] = @CustomerNo, [reservationDate] = @reservationDate WHERE [reservationNo] = @reservationNo">
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
</asp:Content>

