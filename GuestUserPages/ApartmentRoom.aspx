<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="ApartmentRoom.aspx.cs" Inherits="ApartmentRoom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div>
			 <h3>Apartment</h3>
                <hr />
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
                          <img src="img\Apartment1.jpg"/>
                          <div class="container">
                          </div>
                      </div>

                      <div class="item">
                        <img src="img\Apartment2.jpg"/>
                          <div class="container">
                        </div>
                      </div>

                      <div class="item">
                        <img src="img\Apartment3.jpg"/>
                          <div class="container">
                        </div>
                      </div>
                    </div>
                    <!-- Carousel nav -->
                    <a class="carousel-control left" href="#hotoffers" data-slide="prev">&lsaquo;</a>
                    <a class="carousel-control right" href="#hotoffers" data-slide="next">&rsaquo;</a>
                  </div>
                 </div>
			 <p>The largest room in the building is known as the Apartment which features a luxuriously 
                 furnished bedroom and generous living area.</p>
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

