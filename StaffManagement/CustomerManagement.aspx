<%@ Page Title="" Language="C#" MasterPageFile="~/StaffManageSystem/MasterPage.master" AutoEventWireup="true" CodeFile="CustomerManagement.aspx.cs" Inherits="StaffManageSystem_CustomerManagement" EnableEventValidation="false"  %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Customer</h2>
        <!--Mailing List<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="mailingList" DataValueField="mailingList" AutoPostBack="True">
        </asp:DropDownList> -->
        <div class="row container">
            <asp:Button ID="Button1" runat="server" Text="New Customer" CssClass="btn btn-primary" OnClick="Button1_Click"/>
        <asp:Button ID="MailList" runat="server" Text="Customer In Maillist" OnClick="Maillist_Click" CssClass="btn" />
            <asp:Button ID="NotMailList" runat="server" Text="Customer Not In Maillist" OnClick="NotMaillist_Click" CssClass="btn" />
        <asp:LinkButton ID="lnkExportWFormat" runat="server" onclick="lnkExportFormat_Click" Text="Export to PDF" CssClass="btn btn-warning" Style="float:right"/>
         </div>
    <br />
    <asp:Label id="lblError"  EnableViewState="false" Runat="server" />
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT DISTINCT mailingList FROM [Customer]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerNo" DataSourceID="SqlDataSource1" OnRowUpdated="Gridview1_RowUpdated" EmptyDataText="There are no data records to display." Height="224px" Width="837px" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" ReadOnly="True" SortExpression="CustomerNo" InsertVisible="False" />
        <asp:BoundField DataField="userName" HeaderText="UserName" SortExpression="userName" />
        <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
        <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" SortExpression="DateOfBirth" DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="street" HeaderText="Street" SortExpression="street"/>
        <asp:BoundField DataField="suburb" HeaderText="Suburb" SortExpression="suburb" />
        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:CheckBoxField DataField="mailingList" HeaderText="MailingList" SortExpression="mailingList" />
        <asp:BoundField DataField="cardNumber" HeaderText="CardNumber" SortExpression="cardNumber" />
        <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True">
        <ControlStyle CssClass="btn" />
        <ItemStyle HorizontalAlign="Center" />
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





<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerNo] = @CustomerNo" InsertCommand="INSERT INTO [Customer] ([userName], [password], [firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber]) VALUES (@userName, @password, @firstName, @lastName, @DateOfBirth, @street, @suburb, @city, @ContactNo, @email, @mailingList, @cardNumber)" SelectCommand="SELECT CustomerNo, userName, password, firstName, lastName, DateOfBirth, street, suburb, city, ContactNo, email, mailingList, cardNumber FROM Customer WHERE (mailingList = @inMailingList)" UpdateCommand="UPDATE [Customer] SET [userName] = @userName, [password] = @password, [firstName] = @firstName, [lastName] = @lastName, [DateOfBirth] = @DateOfBirth, [street] = @street, [suburb] = @suburb, [city] = @city, [ContactNo] = @ContactNo, [email] = @email, [mailingList] = @mailingList, [cardNumber] = @cardNumber WHERE [CustomerNo] = @CustomerNo">
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
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="inMailingList" PropertyName="SelectedValue" />
    </SelectParameters>
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

<p>
</p>
</asp:Content>

