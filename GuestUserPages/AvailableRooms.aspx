<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="AvailableRooms.aspx.cs" Inherits="AvailableRooms" %>

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
        <h2><asp:Label ID="roomListTitle" runat="server" Text="Available Rooms"></asp:Label></h2>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Please sign up or login to make a reservation.Thank you." Style="color: red;"></asp:Label>
   <hr/>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [RoomType]"></asp:SqlDataSource>

    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <span style="">
            <table>
                    <tr>
                        <td>
                            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                            <br />
                            <h4>
                            Room Type:
                            <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                            </h4>
                            <br />
                            <p>
                            Description:
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </p>
                            <p>
                            Max Guests:
                            <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                            </p>
                            <h5>
                            Room Rate:
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                            </h5>
                            <br />
                            <div class="row">
                                <div class="span2">
                                    <asp:Label ID="ratingTitle2" runat="server" Text="Room Rating:"></asp:Label>
                                </div>
                                   <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="4" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="Book_Click1"/>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="RoomPage.aspx" runat="server">View Detail>></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <hr/>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">

            </div>
        </LayoutTemplate>
    </asp:ListView>

        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <span style="">
            <table>
                    <tr>
                        <td>
                            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                            <br />
                            <h4>
                            Room Type:
                            <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                            </h4>
                            <br />
                            <p>
                            Description:
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </p>
                            <p>
                            Max Guests:
                            <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                            </p>
                            <h5>
                            Room Rate:
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                            </h5>
                            <br />
                            <div class="row">
                                <div class="span2">
                                    <asp:Label ID="ratingTitle2" runat="server" Text="Room Rating:"></asp:Label>
                                </div>
                                   <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="5" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="Book_Click2"/>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="BalconyRoom.aspx" runat="server">View Detail>></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <hr/>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">

            </div>
        </LayoutTemplate>
    </asp:ListView>

        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            <span style="">
            <table>
                    <tr>
                        <td>
                            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                            <br />
                            <h4>
                            Room Type:
                            <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                            </h4>
                            <br />
                            <p>
                            Description:
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </p>
                            <p>
                            Max Guests:
                            <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                            </p>
                            <h5>
                            Room Rate:
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                            </h5>
                            <br />
                            <div class="row">
                                <div class="span2">
                                    <asp:Label ID="ratingTitle2" runat="server" Text="Room Rating:"></asp:Label>
                                </div>
                                   <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="5" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="Book_Click3"/>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="DeluxeRoom.aspx" runat="server">View Detail>></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <hr/>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">

            </div>
        </LayoutTemplate>
    </asp:ListView>

        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
        <ItemTemplate>
            <span style="">
            <table>
                    <tr>
                        <td>
                            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                            <br />
                            <h4>
                            Room Type:
                            <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                            </h4>
                            <br />
                            <p>
                            Description:
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </p>
                            <p>
                            Max Guests:
                            <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                            </p>
                            <h5>
                            Room Rate:
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                            </h5>
                            <br />
                            <div class="row">
                                <div class="span2">
                                    <asp:Label ID="ratingTitle2" runat="server" Text="Room Rating:"></asp:Label>
                                </div>
                                   <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="4" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="Book_Click4"/>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="SuiteRoom.aspx" runat="server">View Detail>></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <hr/>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">

            </div>
        </LayoutTemplate>
    </asp:ListView>

        <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
        <ItemTemplate>
            <span style="">
            <table>
                    <tr>
                        <td>
                            <asp:Label ID="imgLabel" runat="server" Text='<%# Eval("img") %>' />
                            <br />
                            <h4>
                            Room Type:
                            <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName") %>' />
                            </h4>
                            <br />
                            <p>
                            Description:
                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                            </p>
                            <p>
                            Max Guests:
                            <asp:Label ID="numOfPeopleLabel" runat="server" Text='<%# Eval("numOfPeople") %>' />
                            </p>
                            <h5>
                            Room Rate:
                            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price","{0:c}") %>' />
                            </h5>
                            <br />
                            <div class="row">
                                <div class="span2">
                                    <asp:Label ID="ratingTitle2" runat="server" Text="Room Rating:"></asp:Label>
                                </div>
                                   <ajaxToolkit:Rating ID="packageRating" runat="server" CurrentRating="5" MaxRating="5" ReadOnly="True" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></ajaxToolkit:Rating>
                            </div>
                            <br />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="Book_Click5"/>&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="ApartmentRoom.aspx" runat="server">View Detail>></asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <hr/>
            </span>
        </ItemTemplate>
        <LayoutTemplate>
            <div style="" id="itemPlaceholderContainer" runat="server">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">

            </div>
        </LayoutTemplate>
    </asp:ListView>
</asp:Content>

