<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="AboutPage.aspx.cs" Inherits="Hotel_WebASP_AboutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <div class="tabbable tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1" data-toggle="tab">About Us</a></li>
            <li><a href="#tab2" data-toggle="tab">Hotels</a></li>
            <li><a href="#tab3" name="contact" data-toggle="tab">Contact Us</a></li>
          </ul>
          <div class="tab-content span10">
            <div class="tab-pane active" id="tab1">
              <p><h2>About Us</h2></p>
              <p>Allegra Hotels is a eco friendly Hotel.It has been in the hospitality industry for a long time.It has four branches in Melbourne and is well known as it is a great supporter of the envoirnment.
              <p>The hotel has launched a dynamic website to make it more friendly for the customers.</p>
              <p>Allegra Hotels is one of the fastest growing boutique hotel chains in Melbourne. They have over 100 rooms across their 4 hotels and their business has grown by four hundred percent in the last 5 years.</p>
              <p>We prides ourselves on promoting an eco friendly environment with personal service, boasting Australian made in-room products, early-in and late check-out for travel weary guests, 24-hr room-service with light refreshments and a breakfast menu, freshly made on the premises.</p>
              </p>
            </div>
            <div class="tab-pane" id="tab2">
              <iframe width="625" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com.au/maps/ms?msa=0&amp;msid=207423480618058459299.0004ddaabb4694956b2d9&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;ll=-37.837174,144.979019&amp;spn=0.0949,0.145912&amp;z=12&amp;output=embed"></iframe><br /><small>View <a href="https://maps.google.com.au/maps/ms?msa=0&amp;msid=207423480618058459299.0004ddaabb4694956b2d9&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;ll=-37.837174,144.979019&amp;spn=0.0949,0.145912&amp;z=12&amp;source=embed" style="color:#0000FF;text-align:left">Allegra Hotel</a> in a larger map</small>
                     <h3>Allegra Melbourne City Hotel</h3>
                      <p>Allegra Hotels is a eco friendly Hotel.It has been in the hospitality industry for a long time.</p>
                      The branch in Melbourne City was established in 1960, and is a stone;s throw away from the CBD.
                      It is a hot tourist destination and has won the best customer service awards from the last three years.
               
                       <p><b>Address:</b> 123, Flinder St, Melbourne 3100.</p>
                       <p><b>Trading Hours:</b> 7:00 am to 11:00 pm </p>
                       <p><b>Working Days:</b> Open all days of the week</p>
                       <p><b>Phone No: </b>09401942111</p> 
   
                      <h3>Allegra Richmond Hotel</h3>
                      <p>Allegra Hotels is a eco friendly Hotel.It has been in the hospitality industry for a long time.</p>
                      The branch in Richmond was established in 1980, and is a stone;s throw away from the CBD.
                      It is a hot tourist destination and has won the best customer service awards from the last three years.
               
                       <p><b>Address:</b> 123, Richmond Road, Melbourne 3100.</p>
                       <p><b>Trading Hours:</b> 7:00 am to 11:00 pm </p>
                       <p><b>Working Days:</b> Open all days of the week</p>
                       <p><b>Phone No: </b>080104929111</p> 

                      <h3>Allegra St Kilda Hotel</h3>
                      <p>Allegra Hotels is a eco friendly Hotel.It has been in the hospitality industry for a long time.</p>
                      The branch at St Kilda was established in 1960, and is a stone;s throw away from the St Kilda beach.
                      It is a hot tourist destination and has won the best customer service awards from the last three years.
               
                       <p><b>Address:</b> 123, St Kilda Road,Melbourne 3172.</p>
                       <p><b>Trading Hours:</b> 7:00 am to 11:00 pm </p>
                       <p><b>Working Days:</b> Open all days of the week</p>
                       <p><b>Phone No: </b>09999222111</p> 

                      <h3>Allegra Docklands Hotel</h3>
                      <p>Allegra Hotels is a eco friendly Hotel.It has been in the hospitality industry for a long time.</p>
                      The branch at Docklands was established in 1960, and is a stone;s throw away from the St Kilda beach.
                      It is a hot tourist destination and has won the best customer service awards from the last three years.
              
                       <p><b>Address:</b> 123, New Quay Promenade, Melbourne 3008.</p>
                       <p><b>Trading Hours:</b> 7:00 am to 11:00 pm </p>
                       <p><b>Working Days:</b> Open all days of the week</p>
                       <p><b>Phone No: </b>099332222111</p>
            </div>
            <div class="tab-pane" id="tab3">
              <!-- start contact -->
              <script data-sil-id='2aba5d30-a7fc-11e2-b8c0-dfc5f8043b0e'> (function () { var u = 'http://htmlcontactbox.com/widget/contact/2aba5d30-a7fc-11e2-b8c0-dfc5f8043b0e?page=', e, s = document.createElement("script"); s.type = "text/javascript"; s.src = u + encodeURIComponent(window.location + ''); s.async = true; e = document.getElementsByTagName("script"); e = e[e.length - 1]; e.parentNode.insertBefore(s, e); })(); </script>
              <link rel="stylesheet" type="text/css" href="http://htmlcontactbox.com/bootstrap/css/bootstrap-widget.css" />
              <div class='sil-widget-contact sil-widget' id='sil-widget-2aba5d30-a7fc-11e2-b8c0-dfc5f8043b0e'><a href='http://htmlcontactbox.com'>contact is loading <img class='sil-loading' src='http://htmlcontactbox.com/loading.gif'/>.</a></div>
              <!-- end contact -->
            </div>
          </div>
        </div>
      </div>
</asp:Content>

