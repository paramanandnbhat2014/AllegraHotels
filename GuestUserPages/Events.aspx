<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>What's happening in Melbourne.</h3>
    <hr />
    <div class="tabbable"> <!-- Only required for left/right tabs -->
      <ul class="nav nav-pills">
        <li class="active"><a href="#tab1" data-toggle="tab">Arts & Culture</a></li>
        <li><a href="#tab2" data-toggle="tab">Exhibitions</a></li>
          <li><a href="#tab3" data-toggle="tab">Festivals</a></li>
          <li><a href="#tab4" data-toggle="tab">Eat & Drink</a></li>
          <li><a href="#tab5" data-toggle="tab">Music</a></li>
          <li><a href="#tab6" data-toggle="tab">Sports</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab1">
         <div class="row span11" style="margin-left:50px;">
              <div class="row span5">
              <img src="img/BlahBlahComedy.jpg"/>
                  <h5>Blah Blah Comedy</h5>
                  <p>6 Feb 2013 - 6 Feb 2014</p>
                  <p>Sahara Bar, Level 2 301 Swanston Street Melbourne 3000</p>
                  <p>Every Thursday night Softbelly features some of the biggest names in a top quality night of comedy.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/ArtsandCulture/Comedy/Pages/eae61cd1-eb18-437e-8409-03d6e5da4454.aspx?displaymode=map">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/Ballet.jpg"/>
                  <h5>Russian National Ballet Theatre at Her Majesty's Theatre </h5>
                  <p>31 Oct 2013 - 3 Nov 2013</p>
                  <p>Her Majesty's Theatre, 219 Exhibition Street Melbourne VIC 3000</p>
                  <p>The Russian National Ballet Theatre returns for a tour of full-length classical performances of 'Swan Lake' and 'The Nutcracker'.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/ArtsandCulture/Dance/Pages/fe3c03aa-d1a2-4b82-88ff-3b6b18567ca3.aspx">View Detail</a>
              </div>
         </div>

            <div class="row span11" style="margin-left:50px;margin-top: 20px;">
              <div class="row span5">
              <img src="img/Swanlake.jpg"/>
                  <h5>Graeme Murphy's Swan Lake </h5>
                  <p>21 Jun 2013 - 1 Jul 2013</p>
                  <p>Arts Centre Melbourne, 100 St Kilda Road Melbourne VIC 3004</p>
                  <p>Graeme Murphy’s grand vision of the evergreen Swan Lake returns for an exclusive Melbourne only season.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/ArtsandCulture/Dance/Pages/dcef3cdb-8e8d-4842-99dd-43a67d9fd2bb.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/circusoz.jpg"/>
                  <h5>Circus Oz – Cranked Up </h5>
                  <p>19 Jun 2013 - 14 Jul 2013</p>
                  <p>Between Federation Square & Batman Avenue Melbourne 3000</p>
                  <p>Circus Oz delights with two hours of non-stop hilarity, extraordinary acrobatic feats and fun for audiences of all ages under the heated Big Top.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/ArtsandCulture/TheatreandShows/Pages/3c315cd3-cebc-4b5f-bc8d-71fb9f167ca1.aspx">View Detail</a>
              </div>
         </div>
        </div>
        <div class="tab-pane" id="tab2">
          <div class="row span11" style="margin-left:50px;">
              <div class="row span5">
              <img src="img/buildexpo.jpg"/>
                  <h5>Build and Renovating Expo </h5>
                  <p>12 Jul 2013 - 14 Jul 2013</p>
                  <p>Melbourne Convention and Exhibition Centre, 1 Convention Centre Place South Wharf VIC 3006</p>
                  <p>Visit Australia's leading building and renovation expo.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Exhibitions/DesignandCraft/Pages/87c73266-4a38-4050-9960-34e4a4c2e45d.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/cardartspace.jpg"/>
                  <h5>Card Art Spaces</h5>
                  <p>18 May 2013 - 2 Jun 2013</p>
                  <p>ArtPlay, Artplay, Birrarung Marr Batman Avenue Melbourne VIC 3000</p>
                  <p>Come and explore the huge child-friendly cardboard spaces built by architecture students from Monash University.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Exhibitions/DesignandCraft/Pages/fcdf61bb-18a4-4eef-9192-34f82ac6bdf2.aspx">View Detail</a>
              </div>
         </div>

            <div class="row span11" style="margin-left:50px;margin-top: 20px;">
              <div class="row span5">
              <img src="img/airbone.jpg"/>
                  <h5>Airborne </h5>
                  <p>9 Feb 2013 - 31 Dec 2013</p>
                  <p>Les Erdi Plaza, Flinders Walk, Northbank Melbourne 3000</p>
                  <p>Artist Lloyd Godman, 2013 Arts Grant recipient, will install Airborne, a series of super-sustainable air gardens, at Northbank.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Exhibitions/Nature/Pages/Nature.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/alicebook.jpg"/>
                  <h5>Lewis Carroll’s Alice books</h5>
                  <p>20 Mar 2013 - 16 Jun 2013</p>
                  <p>Between Federation Square & Batman Avenue Melbourne 3000</p>
                  <p>Circus Oz delights with two hours of non-stop hilarity, extraordinary acrobatic feats and fun for audiences of all ages under the heated Big Top..</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Exhibitions/HistoryandHeritage/Pages/HistoryandHeritage.aspx">View Detail</a>
              </div>
         </div>
        </div>
          <div class="tab-pane" id="tab3">
          <div class="row span11" style="margin-left:50px;">
              <div class="row span5">
              <img src="img/miff.jpg"/>
                  <h5>Melbourne International Film Festival </h5>
                  <p>25 Jul 2013 - 11 Aug 2013</p>
                  <p>Forum Theatre, 154 Flinders Street Melbourne 3000</p>
                  <p>Melbourne International Film Festival (MIFF) is a film-lover's paradise. See international premieres, red carpet glamour and the best global cinema.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Films/FilmFestivals/Pages/d85bb10a-bb90-499b-89f5-a1f74ff36d4d.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/bloomsday.jpg"/>
                  <h5>Bloomsday in Melbourne 2013</h5>
                  <p>12 Jun 2013 - 16 Jun 2013</p>
                  <p>Fortyfivedownstairs Inc, Basement 45 Flinders Lane Melbourne VIC 3000</p>
                  <p>The Bloomsday Festival celebrates the writer James Joyce and his novels on 16 June each year.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Festivals/ArtsandCulture/Pages/ea20e04a-71ea-48ae-8fd4-b4d030cb96f8.aspx">View Detail</a>
              </div>
         </div>

            <div class="row span11" style="margin-left:50px;margin-top: 20px;">
              <div class="row span5">
              <img src="img/springfashion.jpg"/>
                  <h5>Melbourne Spring Fashion Week </h5>
                  <p>2 Sep 2013 - 8 Sep 2013</p>
                  <p>Melbourne Town Hall 100 Swanston Street Melbourne VIC 3000</p>
                  <p>MSFW is the city's premier fashion event, celebrating the diversity of fashion, design and culture that is synonymous with Melbourne.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Festivals/FashionandDesign/Pages/8158b773-9e30-4f40-9d90-58fdc8b220ea.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/comiccon.jpg"/>
                  <h5>Oz Comic-Con Melbourne</h5>
                  <p>6 Jul 2013 - 7 Jul 2013</p>
                  <p>Royal Exhibition Building 9 Nicholson Street Carlton VIC 3053</p>
                  <p>A pop-culture convention featuring celebrity Q&As, gaming demonstrations, industry workshops, retailers, exhibitors, cosplay comps and lots more.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Festivals/ArtsandCulture/Pages/3c180432-d7d6-4704-91d4-8c0c323293bb.aspx">View Detail</a>
              </div>
         </div>
        </div>
          <div class="tab-pane" id="tab4">
         <div class="row span11" style="margin-left:50px;">
              <div class="row span5">
              <img src="img/lambroast.jpg"/>
                  <h5>The Roast Collection – Weekend Lamb Roast at the Hilton</h5>
                  <p>1 Jun 2013 - 30 Jun 2013</p>
                  <p>Nuevo37, 2 Convention Centre Place South Wharf 3006</p>
                  <p>Warm up with Melbourne Food and Wine's Roast Collection - the winter answer to the Spring Graze - with a hearty lamb roast and a Victorian red wine.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/FoodWine/Dining/Pages/06a52d5a-f697-48af-be00-5746674f7607.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/tasteofmarket.jpg"/>
                  <h5>A Taste of the Market </h5>
                  <p>7 Apr 2013 - 30 Jun 2013</p>
                  <p>Queen Victoria Market 65-159 Victoria Street Melbourne VIC 3000</p>
                  <p>A Taste of the Market is the latest, delicious street food festival to hit Queen Victoria Market.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/FoodWine/Festivals/Pages/e561bb04-603c-4893-b3f4-b5ac57e2a955.aspx">View Detail</a>
              </div>
         </div>

            <div class="row span11" style="margin-left:50px;margin-top: 20px;">
              <div class="row span5">
              <img src="img/winedinner.jpg"/>
                  <h5>Matt Skinner Plumm Wine Dinner</h5>
                  <p>30 May 2013</p>
                  <p>Alluvial Restaurant, InterContinental Melbourne The Rialto 495 Collins Street Melbourne 3000</p>
                  <p>Want to know more about which wine glasses should be used with which wine? International wine judge Matt Skinner will tell you at this dining event.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/FoodWine/Dining/Pages/d2024709-7ddb-4adb-aeea-46211ab23fe5.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/baristachamp.jpg"/>
                  <h5>World Barista Championships</h5>
                  <p>23 May 2013 - 26 May 2013</p>
                  <p>Melbourne Showgrounds 300 Epsom Road Flemington VIC 3032</p>
                  <p>The World Barista Championships is the world's most preeminent coffee competition, welcoming competitors from over 50 countries.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/FoodWine/Festivals/Pages/32e13a22-fe00-4e1c-bb1d-c6e1bebc2843.aspx">View Detail</a>
              </div>
         </div>
        </div>
          <div class="tab-pane" id="tab5">
          <div class="row span11" style="margin-left:50px;">
              <div class="row span5">
              <img src="img/laura.jpg"/>
                  <h5>Laura Marling </h5>
                  <p>30 Jul 2013</p>
                  <p>St Michael's Uniting Church 120 Collins Street Melbourne 3000</p>
                  <p>Returning to Australia for Splendour In The Grass festival, Laura Marling is also performing a show at St Michael's Uniting Church.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Music/gigs/Pages/de3d1719-3725-4f41-b7fa-2910dc16b6b3.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/bogdan.jpg"/>
                  <h5>Bogdan Ota – Day of Wrath Tour </h5>
                  <p>19 Jun 2013</p>
                  <p>Union House Theatre, 1–100 Grattan Street University of Melbourne Parkville 3052</p>
                  <p>Bogdan Ota reinvents the classical, new age and pop genres, with each piece of music full of storytelling and emotion.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Music/gigs/Pages/28179422-6115-457e-bf6c-628008d44f78.aspx">View Detail</a>
              </div>
         </div>

            <div class="row span11" style="margin-left:50px;margin-top: 20px;">
              <div class="row span5">
              <img src="img/nightofmusic.jpg"/>
                  <h5>Turn the Words up Loud – A Night of Writing and Music </h5>
                  <p>29 May 2013</p>
                  <p>The Toff in Town, 252 Swanston Street Melbourne 3000</p>
                  <p>Writers are rock stars, right? Well, sometimes, rock stars are writers too.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Festivals/Music/Pages/98c598d1-cca2-45fb-8eed-1f5a9fe1dda8.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/jazzfestival.jpg"/>
                  <h5>Melbourne International Jazz Festival </h5>
                  <p>31 May 2013 - 9 Jun 2013</p>
                  <p>Arts Centre Melbourne, 100 St Kilda Road Melbourne VIC 3004</p>
                  <p>The world's modern masters of jazz are in Melbourne for ten days only.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Festivals/Music/Pages/45f9341a-2e3b-4f1b-a42d-dda1ed331085.aspx">View Detail</a>
              </div>
         </div>
        </div>
          <div class="tab-pane" id="tab6">
          <div class="row span11" style="margin-left:50px;">
              <div class="row span5">
              <img src="img/feelyoung.jpg"/>
                  <h5>Feel Young</h5>
                  <p>13 Dec 2012 - 31 Dec 2013</p>
                  <p>Federation Square 2 Swanston Street Melbourne VIC 3000</p>
                  <p>Drawing from ancient Chinese traditions, Feel Young combines gentle exercise and dance in a program for all ages and levels of fitness.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Sport/Participate/Pages/a5e2e1a9-ee12-49a2-895e-46deb42e1f10.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/breezerides.jpg"/>
                  <h5>Breeze Rides for Women</h5>
                  <p>15 Mar 2013 - 16 Jun 2013</p>
                  <p>Kensington Neighbourhood House 89 McCracken Street Kensington 3031</p>
                  <p>These bicycle rides are for women only, cater to every level, and are both recreational and social. They have a 'no-one gets left behind' policy.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Sport/Participate/Pages/c05b00a6-f3af-4068-945e-0be7c0960997.aspx">View Detail</a>
              </div>
         </div>

            <div class="row span11" style="margin-left:50px;margin-top: 20px;">
              <div class="row span5">
              <img src="img/nightofmusic.jpg"/>
                  <h5>The Age Run Melbourne </h5>
                  <p>21 Jul 2013</p>
                  <p>Federation Square 2 Swanston Street Melbourne VIC 3000</p>
                  <p>The Age Run Melbourne is more than just a 'fun run'.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Sport/Participate/Pages/abb7c3e0-b046-4f23-89a3-2277f3363783.aspx">View Detail</a>
              </div>
              <div class="row span5">
              <img src="img/barcraft.jpg"/>
                  <h5>Barcraft Melbourne XII </h5>
                  <p>1 Jun 2013</p>
                  <p>The Exchange Hotel 120 King Street Melbourne 3000</p>
                  <p>Silicon Sports are back with BarCraft Melbourne XII bringing you all the live action from the Blizzard World Championship Series Korea Finals.</p>
                  <a href="http://www.thatsmelbourne.com.au/Whatson/Sport/Watch/Pages/31fc9d71-d22c-432f-a8a3-0c602362d2a1.aspx">View Detail</a>
              </div>
         </div>
        </div>
      </div>
    </div>
</asp:Content>

