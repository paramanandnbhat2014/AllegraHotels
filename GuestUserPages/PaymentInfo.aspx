<%@ Page Title="Allegra Hotel" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" 
    CodeFile="PaymentInfo.aspx.cs" Inherits="Reservation_PaymentInfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <div>
        <h3>Payment Detail</h3>
    <p>Please enter your card detail,then click next.</p>
    <br />
        <asp:Label ID="Label2" runat="server" Text="Card Type*"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Master Card</asp:ListItem>
            <asp:ListItem>Visa</asp:ListItem>
            <asp:ListItem>American Express</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList> &nbsp;&nbsp;&nbsp;&nbsp;
        <img src="img\paymenttype.png" alt="Payment type" />
        <br />
        
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:Label ID="Label1" runat="server" Text="Card Number*"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="cardnumber" runat="server" Text="Please enter Card Number." Style="color:red;"></asp:Label>
         <br />
        <asp:Label ID="Label3" runat="server" Text="Name*"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="name" runat="server" Text="Please enter Customer Name." Style="color:red;"></asp:Label>
         <br />
        <asp:Label ID="Label4" runat="server" Text="Card Expiry*"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" Width="80px">
            <asp:ListItem>01</asp:ListItem>
            <asp:ListItem>02</asp:ListItem>
            <asp:ListItem>03</asp:ListItem>
            <asp:ListItem>04</asp:ListItem>
            <asp:ListItem>05</asp:ListItem>
            <asp:ListItem>06</asp:ListItem>
            <asp:ListItem>07</asp:ListItem>
            <asp:ListItem>08</asp:ListItem>
            <asp:ListItem>09</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server" Height="26px" Width="102px">
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
            <asp:ListItem>2016</asp:ListItem>
            <asp:ListItem>2017</asp:ListItem>
            <asp:ListItem>2018</asp:ListItem>
            <asp:ListItem>2019</asp:ListItem>
            <asp:ListItem>2020</asp:ListItem>
            <asp:ListItem>2021</asp:ListItem>
            <asp:ListItem>2022</asp:ListItem>
            <asp:ListItem>2023</asp:ListItem>
        </asp:DropDownList>
         <br />
            <asp:Button ID="Button1" runat="server" Text="Confirm" style="clear: left; width: 10%; margin-left:23px; margin-top:10px; height: 32px; font-size: 13px;" class="btn btn-primary" OnClick="Button1_Click"/>
            <asp:Button ID="Button2" runat="server" Text="Back" style="clear: left; width: 10%; margin-left:23px; margin-top:10px; height: 32px; font-size: 13px;" class="btn btn-primary" OnClick="Button2_Click"/>    
        </ContentTemplate>
      </asp:UpdatePanel>
                </div>

</asp:Content>