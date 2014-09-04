<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="DeluxeRoom.aspx.cs" Inherits="DeluxeRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
			 <h3>Deluxe Room</h3>
                <hr/>
			 <div class="container">
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
                          <img src="img\deluxeslide1.jpg"/>
                          <div class="container">
                          </div>
                      </div>

                      <div class="item">
                        <img src="img\deluxeslide2.jpg"/>
                          <div class="container">
                        </div>
                      </div>

                      <div class="item">
                        <img src="img\deluxeslide3.jpg"/>
                          <div class="container">
                        </div>
                      </div>
                    </div>
                    <!-- Carousel nav -->
                    <a class="carousel-control left" href="#hotoffers" data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#hotoffers" data-slide="next">&rsaquo;</a>
                  </div>
                 </div>
			 <p>Relax in the quiet retreat of a Deluxe Room, which has been beautifully appointed 
                 with casual elegant furnishings. Each room has an ensuite bathroom, remote control 
                 air conditioning, minibar and tea and coffee facilities. These rooms are perfect for 
                 the business traveller or busy tourist.</p>
			 <h4>Features and Facilities:</h4>
               <div class="row-fluid">
                <div class="span6">
                    <ul>
				      	<li>Individually controlled air-conditioning</li>
				      	<li>Free in-house movie channels</li>
				      	<li>Mini bar/Refrigerator</li>
				      	<li>Electronic safe deposit box^</li>
				      	<li>Luxurious toiletries</li>
                    </ul>
                 </div>
                <div class="span6">
                    <ul>
				      	<li>Colour Television with remote control</li>
				      	<li>Selected Foxtel channels</li>
                        <li>Hair Dryer</li>
                        <li>Use of offsite fitness centre</li>
                        <li>Free WiFi</li>
				    </ul>
                </div>
                </div>
                <h4>Residence Services:</h4>
             <div class="row-fluid">
                <div class="span6">
                    <ul>
				      	<li>Massage</li>
                    </ul>
                 </div>
                <div class="span6">
                    <ul>
				      	<li>Dry cleaning and Laundry services</li>
				    </ul>
                </div>
              </div>
                <h4>Safety and Security:</h4>
              <div class="row-fluid">
                <div class="span6">
                    <ul>
				      	<li>Smoke detector and sprinkler</li>
                    </ul>
                 </div>
                <div class="span6">
                    <ul>
				      	<li>All doors are installed with safety latch and eye viewer</li>
				    </ul>
                </div>
			 </div>
            </div>
</asp:Content>

