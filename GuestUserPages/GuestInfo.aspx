<%@ Page Title="Allegra Hotel" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" 
    CodeFile="GuestInfo.aspx.cs" Inherits="Reservation_GuestInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">

    <div class="container"  style="margin-left: 300px;">
        <br />
        <p>Please enter your personal information</p>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Date of Birth"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Street"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Suburb"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Contact Number"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Where do you heard of Allegra Hotel?"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" />&nbsp;
        Internet &nbsp;&nbsp;<asp:CheckBox ID="CheckBox3" runat="server" />&nbsp;TV &nbsp;&nbsp;<asp:CheckBox ID="CheckBox4" runat="server" />&nbsp;Magazines &nbsp;&nbsp;<asp:CheckBox ID="CheckBox5" runat="server" />&nbsp;News Papers &nbsp;&nbsp;<asp:CheckBox ID="CheckBox6" runat="server" />&nbsp;Friends or Families &nbsp;&nbsp;<br />
        <p></p>
        Other:<asp:TextBox ID="TextBox9" runat="server" Width="380px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Do you want to sumbit out our mailing list?"></asp:Label>
        &nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Confirm" style="clear: left; width: 20%; margin-left:23px; margin-top:10px; height: 32px; font-size: 13px;" class="btn btn-primary" OnClick="Button1_Click"/>
        <br />
        <br />
    </div>
</asp:Content>
