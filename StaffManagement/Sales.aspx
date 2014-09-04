<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="StaffManageSystem_Sales" EnableEventValidation="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<h2>Sales</h2>
        <div class="row container">
        <asp:LinkButton ID="lnkExportWFormat" runat="server" onclick="lnkExportFormat_Click" Text="Export to PDF" CssClass="btn btn-warning" Style="float:right"/>   
        </div>
       <br />
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    <h5>Room Sales</h5>
    <asp:GridView ID="GridView1" runat="server" OnRowUpdated="Gridview1_RowUpdated" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="reservationNo" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CustomerNo" HeaderText="Customer No." SortExpression="CustomerNo" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" ItemStyle-Width="120">
            </asp:BoundField>
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName"  ItemStyle-Width="120" >
            </asp:BoundField>
            <asp:BoundField DataField="reservationNo" HeaderText="Reservation No." ReadOnly="True" SortExpression="reservationNo" />
            <asp:BoundField DataField="RoomNo" HeaderText="Room No." ReadOnly="True" SortExpression="RoomNo" />
            <asp:BoundField DataField="price" HeaderText="Room Rate" SortExpression="price" DataFormatString="{0:c}" ItemStyle-Width="120">
            </asp:BoundField>
            <asp:BoundField DataField="lengthOfDate" HeaderText="Length of Date" SortExpression="lengthOfDate" />
            <asp:BoundField DataField="totalAmount" HeaderText="Total Amount" SortExpression="totalAmount" DataFormatString="{0:c}"  ItemStyle-Width="120">
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT c.customerNo , c.firstName , c.lastName , r.reservationNo , room.RoomNo , rt.price , DATEDIFF(DAY,rr.checkinDate,rr.checkoutDate) AS lengthOfDate ,  (rt.price)*DATEDIFF(DAY,rr.checkinDate,rr.checkoutDate) AS totalAmount FROM [Room] room , [Reservation] AS r , [RoomType] rt, [ReservationRoom] rr, [Customer] AS c WHERE c.CustomerNo = r.CustomerNo AND r.reservationNo = rr.reservationNo  AND room.RoomNo = rr.RoomNo AND room.roomTypeId = rt.roomTypeId GROUP BY c.customerNo , c.firstName , c.lastName , r.reservationNo , room.RoomNo , rt.price , rr.checkinDate,rr.checkoutDate" >
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT SUM((rt.price)*DATEDIFF(DAY,rr.checkinDate,rr.checkoutDate)) AS TotalIncome FROM [Room] room , [Reservation] AS r ,[RoomType] rt, [ReservationRoom] rr, [Customer] AS c WHERE c.CustomerNo = r.CustomerNo AND r.reservationNo = rr.reservationNo AND room.roomTypeId = rt.roomTypeId AND room.RoomNo = rr.RoomNo"></asp:SqlDataSource>
    <div class="container">
        <hr />
    </div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <div class="row span3 offset11">
               <strong><asp:Label ID="Label1" runat="server" Text="Total Income:"></asp:Label></strong>
               <asp:Label ID="roomIncome" runat="server" Text='<%# Eval("TotalIncome","{0:c}") %>'></asp:Label>
           </div>
        </ItemTemplate>
    </asp:ListView>
    <br />
    <h5>Package Sales</h5>
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="reservationNo" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CustomerNo" HeaderText="Customer No." SortExpression="CustomerNo" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" ItemStyle-Width="80">
            </asp:BoundField>
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName"  ItemStyle-Width="80" >
            </asp:BoundField>
            <asp:BoundField DataField="reservationNo" HeaderText="Reservation No." ReadOnly="True" SortExpression="reservationNo" />
            <asp:BoundField DataField="packageNo" HeaderText="Package No." ReadOnly="True" SortExpression="packageNo" />
            <asp:BoundField DataField="packageName" HeaderText="Package Name" SortExpression="packageName" />
            <asp:BoundField DataField="typeName" HeaderText="Room Type" SortExpression="typeName" DataFormatString="{0:c}"  ItemStyle-Width="120">
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Package Rate" SortExpression="price" DataFormatString="{0:c}" ItemStyle-Width="120">
            </asp:BoundField>
            
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT c.customerNo , c.firstName , c.lastName , r.reservationNo , p.packageNo , p.packageName, p.price , rt.typeName FROM [Package] p , [Reservation] r , [RoomType] rt, [ReservationPackage] rp, [Customer] c WHERE c.CustomerNo = r.CustomerNo AND r.reservationNo = rp.reservationNo AND p.packageNo = rp.packageNo AND p.roomTypeId = rt.roomTypeId GROUP BY c.customerNo , c.firstName , c.lastName , r.reservationNo , p.packageNo , p.packageName, p.price , rt.typeName" >
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT SUM(p.price) AS TotalIncome FROM [Package] p , [Reservation] r , [RoomType] rt, [ReservationPackage] rp, [Customer] c WHERE c.CustomerNo = r.CustomerNo AND r.reservationNo = rp.reservationNo AND p.packageNo = rp.packageNo AND p.roomTypeId = rt.roomTypeId"></asp:SqlDataSource>
    <div class="container">
        <hr />
    </div>
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource4">
        <ItemTemplate>
            <div class="row span3 offset11">
                    <strong><asp:Label ID="Label3" runat="server" Text="Total Income:"></asp:Label></strong>
                    <asp:Label ID="packageIncome" runat="server" Text='<%# Eval("TotalIncome","{0:c}") %>'></asp:Label>
           </div>
        </ItemTemplate>
    </asp:ListView>
   <div class="container">
        <hr />
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" SelectCommand="SELECT (room.TotalIncome + pack.TotalIncome) AS TotalIncome 
      FROM (SELECT SUM(p.price) AS TotalIncome FROM [Package] p , [Reservation] r , [RoomType] rt, [ReservationPackage] rp, [Customer] c WHERE c.CustomerNo = r.CustomerNo AND r.reservationNo = rp.reservationNo AND p.packageNo = rp.packageNo AND p.roomTypeId = rt.roomTypeId) pack, 
      (SELECT SUM((rt.price)*DATEDIFF(DAY,rr.checkinDate,rr.checkoutDate)) AS TotalIncome FROM [Room] room , [Reservation] AS r ,[RoomType] rt, [ReservationRoom] rr, [Customer] AS c WHERE c.CustomerNo = r.CustomerNo AND r.reservationNo = rr.reservationNo AND room.roomTypeId = rt.roomTypeId AND room.RoomNo = rr.RoomNo) room">
    </asp:SqlDataSource>
    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource5">
        <ItemTemplate>
            <div class="row span3 offset11">
                    <h4>
                        <asp:Label ID="AllIncome" runat="server" Text="Total Income:"></asp:Label>
                        <asp:Label ID="incomeValue" runat="server" Text='<%# Eval("TotalIncome","{0:c}") %>'></asp:Label>
                    </h4>
           </div>
        </ItemTemplate>
    </asp:ListView>
    <br/>
    
</asp:Content>

