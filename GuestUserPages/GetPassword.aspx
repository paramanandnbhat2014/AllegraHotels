<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="GetPassword.aspx.cs" Inherits="GetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div class="container" style="text-align:center">
        <h2><asp:Label ID="pageTitle" runat="server" Text="Forget your password?"></asp:Label></h2>
        <hr />
        <div class="row">
            <h4><asp:Label ID="subtitle" runat="server" Text="Please enter the following information"></asp:Label></h4>
        </div>
        <div class="row">
            <asp:Label ID="usernameLabel" runat="server" Text="User Name"></asp:Label>
        </div>
        <div class="row">
            <asp:TextBox ID="usernamebox" runat="server"></asp:TextBox>
        </div>
        <div class="row">
            <asp:Label ID="emailLabel" runat="server" Text="Email Address"></asp:Label>
        </div>
        <div class="row">
            <asp:TextBox ID="emailbox" runat="server"></asp:TextBox>
        </div>
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Submit_Click" CssClass="btn"/>
        <h3><asp:Label ID="successful" runat="server" Text="Your password has been sent to your Email."></asp:Label></h3>
     </div> 
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
</asp:Content>

