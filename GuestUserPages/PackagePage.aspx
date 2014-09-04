<%@ Page Title="Allegra Hotel Packages" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="PackagePage.aspx.cs" Inherits="Hotel_WebASP_PackagePage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <ajaxToolkit:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" TargetControlID="Converter" runat="server" VerticalSide="Top" VerticalOffset="200" HorizontalSide="Right" HorizontalOffset="10" ScrollEffectDuration=".1"></ajaxToolkit:AlwaysVisibleControlExtender>
    <asp:Panel ID="Converter" runat="server">
       <!--Begin Currency Converter Code-->
        <script type="text/javascript">c = "USD"; a = "AUD"; amt = "1"; size = "120";</script>
        <script type="text/javascript" src="http://www.foreignexchangeresource.com/converter.js"></script>
        <!--End Currency Converter Code-->
    </asp:Panel>
    <div class="container" style="text-align: center">
        <h2><asp:Label ID="roomListTitle" runat="server" Text="All Packages"></asp:Label></h2>
    </div>
   <hr/>
     <asp:Label ID="Label1" runat="server" Text="Please sign up first.Thank you." Style="color: red;"></asp:Label>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="4" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                <br />
                                </div>
                                <div class="span3" style="margin-top: 70px">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click11"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ComedyPackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                
            
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 2;"></asp:SqlDataSource>
    <hr/>
    
    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                <br />
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="5" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                </div>
                                <div class="span3 packageimg">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click12"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="AisanRestaurantPackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr/>
            
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 3;"></asp:SqlDataSource>

        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                <br />
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="5" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                </div>
                                <div class="span3 packageimg">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                                
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click13"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="ArtCulturePackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr/>
            
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 4;"></asp:SqlDataSource>

        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                <br />
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="4" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                </div>
                                <div class="span3 packageimg">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                               
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click14"/>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="SpaPackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr/>
            
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 5;"></asp:SqlDataSource>
    
        <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                <br />
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="4" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                </div>
                                <div class="span3 packageimg">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click15"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="DinningPackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr/>
            
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 6;"></asp:SqlDataSource>
    
        <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource6">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                <br />
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="5" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                </div>
                                <div class="span3 packageimg">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                                
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click16"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="EnjoyMovingPackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr/>
            
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
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 7;"></asp:SqlDataSource>

        <asp:ListView ID="ListView7" runat="server" DataSourceID="SqlDataSource7">
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <ItemTemplate>
            <span style="">
                <table>
                    <tr>
                        <td>
                            <div class="row-fluid">
                                <div class="span9">
                                <h4>
                                <asp:Label ID="packageNameLabel" runat="server" Text='<%# Eval("packageName") %>' />
                                </h4>
                                <br />
                                Description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                Room Type:
                                <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                                <br />
                                Max Guests:
                                <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                                <br />
                                <h5>
                                Offer Name:
                                <asp:Label ID="offerNameLabel" runat="server" Text='<%# Eval("offerName") %>' />
                                </h5>
                                <br />
                                Start Date:
                                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                End Date:
                                <asp:Label ID="endDateLabel" runat="server" Text='<%# Eval("endDate","{0:dd/MM/yyyy}") %>' />
                                <br />
                                <h5>
                                Price:
                                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price","{0:c}") %>' />
                                </h5>
                                <br />
                                <div class="row-fluid">
                                    <div class="span2">
                                        <asp:Label ID="ratingTitle2" runat="server" Text="Package Rating:"></asp:Label>
                                    </div>
                                       <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="4" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                                </div>
                                </div>
                                <div class="span3 packageimg">
                                <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                                <br />
                                </div>
                            </div>
                            <div class="row-fluid">
                               
                                <asp:Button ID="Button1" runat="server" Text="Book Now" CssClass="btn btn-primary" OnClick="Book_Click17"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="FoodTourPackage.aspx">View Detail>></a>
                            </div>
                        </td>
                    </tr>
                </table>
                <hr/>
            
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
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT packageName, p.description, typeName, numOfPeople, offerName, startDate, endDate,p.price, p.img
FROM Package p, Offering o, RoomType r
WHERE p.roomTypeId = r.roomTypeId
AND p.offeringId = o.offeringId
AND packageNo = 8;"></asp:SqlDataSource>
</asp:Content>
