<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="FoodTourPackage.aspx.cs" Inherits="FoodTourPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Carlton Food Tour Package</h3>
    <hr />
    <img src="img\foodtour.jpg" alt="Food Tour" style="margin-left: 100px;"/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, availableStatus, p.price, typeName, r.description, offerName, o.description,startDate,endDate,URL
FROM Package p,Offering o,RoomType r
WHERE p.offeringId = o.offeringId
AND p.roomTypeId = r.roomTypeId
AND packageNo = 8;"></asp:SqlDataSource>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
            <h5>Package Name: <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' /></h5>
            <br />
            Description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
            Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
            <br />
            <h5>Room Type: <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' /></h5>
            <br />
            Room Description:
            <asp:Label ID="description1Label" runat="server" Text='<%# Eval("description1") %>' />
            <br />
            <h5>Offering: <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' /></h5>
            <br />
            Offering Description:
            <asp:Label ID="description2Label" runat="server" Text='<%# Eval("description2") %>' />
            <br />
            Start Date:
            <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
            <br />
            End Date:
            <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
            <br />
            Website Link:
            <asp:Label ID="URLLabel" runat="server" Text='<%# Eval("URL") %>' />
            <br />
<br />
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>

