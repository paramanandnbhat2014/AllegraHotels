<%@ Page Title="Allegra Hotel" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <div class="container">
      <!-- Resrvation Box -->
      <div class="reservationBox">
        <div class="row-fluid h4">
          <h4>Make A Reservation</h4>
        </div>
        <div class="row-fluid selectertext">
          
            <div id="labeltext" class="span2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Select a hotel</div>
            <div id="Div1" class="span2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check in </div>
            <div id="Div2" class="span2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check out</div>
            <div id="Div3" class="span1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Room</div>
            <div id="Div4" class="span2 offset1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Adult</div>
          
        </div>

        <div class="row-fluid selecter">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="HotelNameDrop" runat="server" DataSourceID="SqlDataSource1" DataTextField="branchName" DataValueField="branchName" CssClass="span2"></asp:DropDownList> &nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" SelectCommand="SELECT * FROM [Hotel]"></asp:SqlDataSource>
                    <asp:TextBox ID="checkInDate" runat="server" CssClass="span2" Enabled="False"></asp:TextBox> <button id="calendarButton1" style="background: none;border: none"><i class="icon-calendar icon-white"></i></button>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" TargetControlID="checkInDate" PopupButtonID="calendarButton1" runat="server" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
                    <asp:TextBox ID="checkOutDate" runat="server" CssClass="span2" Enabled="False"></asp:TextBox> <button id="calendarButton2" style="background: none;border: none"><i class="icon-calendar icon-white"></i></button>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" TargetControlID="checkOutDate" PopupButtonID="calendarButton2" runat="server" Format="dd/MM/yyyy"></ajaxToolkit:CalendarExtender>
      
                    <select name="room" class="span2">
                      <option>1</option>
                      <option>2</option>
                      <option>3</option>
                      <option>4</option>
                      <option>5</option>
                      <option>6</option>
                      <option>7</option>
                      <option>8</option>
                      <option>9</option>
                      <option>10</option>
                    </select>
                    &nbsp;&nbsp;
                    <select name="adult" class="span2">
                      <option>1</option>
                      <option>2</option>
                      <option>3</option>
                      <option>4</option>
                    </select>
                    <asp:Button ID="Button1" runat="server" Text="FIND" class="btn btn-large check" OnClick="Button1_Click"/>
                </ContentTemplate>
            </asp:UpdatePanel>
          </div>   
        </div> 

    <!-- Image Slides -->
      <div id="hotoffers" class="carousel slide">
        <ol class="carousel-indicators">
          <li data-target="#hotoffers" data-slide-to="0" class="active"></li>
          <li data-target="#hotoffers" data-slide-to="1"></li>
          <li data-target="#hotoffers" data-slide-to="2"></li>
        </ol>
      <!-- Carousel items -->
        <div class="carousel-inner">

          <div class="active item">
              <a href="ComedyPackage.aspx"><img src="img\homecomedyBanner.jpg"/></a>
              <div class="container">
                <div class="carousel-caption text-center">
                  <p>Ascend the stairs to Sahara Bar for a great night of stand-up comedy. = Comedy Festival Package
                  </p>
                </div>
              </div>
          </div>

          <div class="item">
            <a href="DinningPackage.aspx"><img src="img\DinningHomeBanner.jpg"/></a>
              <div class="container">
                <div class="carousel-caption text-center">
                  <p>Allegra Hotel Evening Dinning Package: Treat yourself a wonderful and rommantic dinner.
                  </p>
                </div>
            </div>
          </div>

          <div class="item">
            <a href="SpaPackage.aspx"><img src="img\HomeSpaBanner.jpg"/></a>
              <div class="container">
                <div class="carousel-caption text-center">
                  <p>Enjoy the comfort room in Allegra and a wonderful spa in East Day. 
                  </p>
                </div>
            </div>
          </div>
        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#hotoffers" data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#hotoffers" data-slide="next">&rsaquo;</a>
      </div>
     </div>

    <!-- Hot Offers -->
      <div class="row">
        
        <ul class="thumbnails">
          <div class="span3">
            <li class="span3">
                <article class="thumbnail">
                  <div class="image">
                    <img src="img\culture.jpg" alt="culture"/>
                    <p class="imagetext">Culture Melbourne</p>
                    <a class="viewdetail" href="ArtCulturePackage.aspx">View Detail>></a>
                  </div>
                </article>
             </li>
          </div>

          <div class="span3">
              <li class="span3">
                <article class="thumbnail">
                  <div class="image">
                    <img src="img\accomdation.jpg" alt="accomdation"/>
                    <p class="imagetext">Most popular - Allegra Deluxe Room</p>
                    <a class="viewdetail" href="DeluxeRoom.aspx">View Detail>></a>
                  </div>
                </article>
              </li>
          </div>

          <div class="span3">
              <li class="span3">
                <article class="thumbnail">
                  <div class="image">
                    <img src="img\concert.jpg" alt="concert"/>
                    <p class="imagetext">Have fun around Melbourne, events, music, movies, museums...</p>
                    <a class="viewdetail" href="Events.aspx">View Detail>></a>
                  </div>
                </article>
              </li>
          </div>

          <div class="span3">
              <li class="span3">
                <article class="thumbnail">
                  <div class="image">
                    <img src="img\travel.jpg" alt="travel"/>
                    <p class="imagetext">Ecotourism and Green Travel operators</p>
                    <a class="viewdetail" href="EcoTravelOperators.aspx">View Detail>></a>
                  </div>
                </article>
              </li>
           </div>
        </ul>
      </div>        
</asp:Content>

   