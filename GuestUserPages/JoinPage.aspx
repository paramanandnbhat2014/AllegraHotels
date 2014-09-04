<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="JoinPage.aspx.cs" Inherits="JoinPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

    <div class="container">
            <h2><asp:Label ID="joinHeader" runat="server" Text="Join Allegra Hotel" Style="margin-left: 350px"></asp:Label></h2>
        <div class="row">
            <hr/>
        </div>
        
    </div>
<div class="container" style="margin-left: 300px">
         <asp:Label id="lblError" Text="Please ensure the fields are properly entered." Visible="false" EnableViewState="false" CssClass="error" Runat="server" Style="color: red;"/>

<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" OnItemInserted="DetailView_ItemInsert" OnItemCommand="DetailView_ItemCommand"  DataKeyNames="CustomerNo" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="400px" BorderStyle="None" GridLines="None">
    <FieldHeaderStyle Width="200px" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="CustomerNo" HeaderText="CustomerNo" InsertVisible="False" ReadOnly="True" SortExpression="CustomerNo" />
        <asp:BoundField DataField="userName" HeaderText="User Name" SortExpression="userName" />
        <asp:TemplateField HeaderText="Password">
                <EditItemTemplate>
                  <asp:TextBox ID="Password" runat="server" TextMode="Password" Text='<%# Bind("password") %>'></asp:TextBox>
                </EditItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
        <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" SortExpression="DateOfBirth" />
        <asp:BoundField DataField="street" HeaderText="Street" SortExpression="street" />
        <asp:BoundField DataField="suburb" HeaderText="Suburb" SortExpression="suburb" />
        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
        <asp:BoundField DataField="ContactNo" HeaderText="Contact No" SortExpression="ContactNo" />
        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        <asp:CheckBoxField DataField="mailingList" HeaderText="Join our Mailing List?" SortExpression="mailingList" />
        <asp:BoundField DataField="cardNumber" HeaderText="Card Number" SortExpression="cardNumber" />
        <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="Join" >
        <ControlStyle CssClass="btn" />
        </asp:CommandField>
    </Fields>
</asp:DetailsView>
    </div>
            <h3><asp:Label ID="successful" runat="server" Text="Successful! Thanks for joining Allegra Hotel!" Style="margin-left: 200px"></asp:Label></h3>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>