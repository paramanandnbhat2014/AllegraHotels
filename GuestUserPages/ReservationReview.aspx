<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="ReservationReview.aspx.cs" Inherits="ReservationReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Reservation Review</h3>
    <div class="row-fluid">
        <div class="span6">
    <h5>Guest Detail</h5>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerNo] = @CustomerNo" InsertCommand="INSERT INTO [Customer] ([userName], [password], [firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber]) VALUES (@userName, @password, @firstName, @lastName, @DateOfBirth, @street, @suburb, @city, @ContactNo, @email, @mailingList, @cardNumber)" ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT [CustomerNo], [userName], [password], [firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber] FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [userName] = @userName, [password] = @password, [firstName] = @firstName, [lastName] = @lastName, [DateOfBirth] = @DateOfBirth, [street] = @street, [suburb] = @suburb, [city] = @city, [ContactNo] = @ContactNo, [email] = @email, [mailingList] = @mailingList, [cardNumber] = @cardNumber WHERE [CustomerNo] = @CustomerNo">
            <DeleteParameters>
                <asp:Parameter Name="CustomerNo" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="street" Type="String" />
                <asp:Parameter Name="suburb" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mailingList" Type="Boolean" />
                <asp:Parameter Name="cardNumber" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userName" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter DbType="Date" Name="DateOfBirth" />
                <asp:Parameter Name="street" Type="String" />
                <asp:Parameter Name="suburb" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="mailingList" Type="Boolean" />
                <asp:Parameter Name="cardNumber" Type="Decimal" />
                <asp:Parameter Name="CustomerNo" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="table" DataKeyNames="CustomerNo" DataSourceID="SqlDataSource1" Height="50px" Width="263px">
            <Fields>
                <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" InsertVisible="False" ReadOnly="True" SortExpression="CustomerNo" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" SortExpression="DateOfBirth" DataFormatString="{0:dd/MM/yyyy}"/>
                <asp:BoundField DataField="street" HeaderText="Street" SortExpression="street" />
                <asp:BoundField DataField="suburb" HeaderText="Suburb" SortExpression="suburb" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="ContactNo" HeaderText="Phone" SortExpression="ContactNo" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:CheckBoxField DataField="mailingList" HeaderText="Mailing List" SortExpression="mailingList" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" UpdateText="Save">
                <ControlStyle CssClass="btn" />
                </asp:CommandField>
            </Fields>
        </asp:DetailsView>
    </p>
            </div>
        <div class="span6">
            <h5>Room/Package Detail</h5>
            <ul>
                <li>Package Name: Comedy Festival Package</li>
                <li>Description: Accomdation in Allegra Hotel and Ascend the stairs to Sahara Bar for a great night of stand-up comedy.</li>
                <li>Room Type: Standard Room</li>
                <li>Price: $350 AUD</li>
                <li>Number of rooms: 2</li>
                <li>Number of guests: 4</li>
                <li>Check in date: 25/05/2013</li>
                <li>Check out date: 01/06/2013</li>
            </ul>
            <a href="#" class="btn">Change</a> &nbsp; <a href="#" class="btn">Delete</a>
        </div>
   </div>
    <hr />
    <div class="row" style="text-align: right;">
        <p>&nbsp; &nbsp; &nbsp;GST: $75</p>
        <h4>Total Price: $800 AUD</h4>
        <a href="#" class="btn btn-primary btn-large">Confirm</a> &nbsp; <a href="#" class="btn btn-large">Cancel</a>
    </div>
    

</asp:Content>

