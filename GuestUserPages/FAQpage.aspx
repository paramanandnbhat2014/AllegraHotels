<%@ Page Title="" Language="C#" MasterPageFile="Home.master" AutoEventWireup="true" CodeFile="FAQpage.aspx.cs" Inherits="FAQpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Allegra Hotel FAQ</h3>
    <p>Here you will find information to help you book your break.  Click on the questions below to read more.</p>
    <hr />
    <div class="accordion" id="accordion2">
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
        How can I make a booking for the Allegra Hotels?
      </a>
    </div>
    <div id="collapseOne" class="accordion-body collapse in">
      <div class="accordion-inner">
        Bookings can be made either by calling our dedicated booking line 043199432
        Or via the websites www.allegrahotel.com.au
      </div>
    </div>
  </div>
  <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
        What time is your Check-in and Check-out time?
      </a>
    </div>
    <div id="collapseTwo" class="accordion-body collapse">
      <div class="accordion-inner">
        Check-in begins at 3pm. Check-out is 11am.
      </div>
    </div>
  </div>
    <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
        Do you accommodate Late Check-out?
      </a>
    </div>
    <div id="collapseThree" class="accordion-body collapse">
      <div class="accordion-inner">
        Yes, based upon availability. For information regarding a later check-out time, contact the Front Desk the evening before or morning of departure.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFour">
        Where are you located?
      </a>
    </div>
    <div id="collapseFour" class="accordion-body collapse">
      <div class="accordion-inner">
        Allegra Hotel has four branch hotels located in different location in Melbourne. Go to About/Hotels to see hotel location details.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFive">
       Is there transportation available to/from the airport?
      </a>
    </div>
    <div id="collapseFive" class="accordion-body collapse">
      <div class="accordion-inner">
        Yes, Ultimate Shuttle is available for an additional fee. Fare-based town car transportation can be arranged through our Concierge by calling 043199432. Alternate subway and taxi options are also available from the airport to Allegra Hotels.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseSix">
        Do you have onsite parking? How much is parking? Is it included in my room rate?
      </a>
    </div>
    <div id="collapseSix" class="accordion-body collapse">
      <div class="accordion-inner">
        Yes, we have free parking spot in Allegra Hotel.Parking is included in the Hotel Room Rate. However due to the limited number of the parking spot, make sure to confirm with the front dest before you come.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseSeven">
        I want flowers, chocolates, champagne, gifts sent to the room. How do I do this?
      </a>
    </div>
    <div id="collapseSeven" class="accordion-body collapse">
      <div class="accordion-inner">
        Please contact our concierge, who may discuss options with you - 043199432.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseEight">
        Do you have pet sitting or dog walking services?
      </a>
    </div>
    <div id="collapseEight" class="accordion-body collapse">
      <div class="accordion-inner">
        Yes, inquire with our front dest about dog sitting or walking services by calling: 043199432.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseNine">
        Is breakfast included for all room rates?
      </a>
    </div>
    <div id="collapseNine" class="accordion-body collapse">
      <div class="accordion-inner">
        Yes and guests will be offered a buffet-style breakfast suitable for all palates and appetites.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTen">
        Can I pay a deposit for a hotel room and pay the balance in full at a later date?
      </a>
    </div>
    <div id="collapseTen" class="accordion-body collapse">
      <div class="accordion-inner">
        No.  The balance must be paid in full at the time of the booking.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseEleven">
        Is my Identification or Passport required at check in?
      </a>
    </div>
    <div id="collapseEleven" class="accordion-body collapse">
      <div class="accordion-inner">
        We do require Photo ID at time of check in for all reservations.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwelve">
        What is the minimum age requirement to check into a Guest Room at your Allegra Hotel?
      </a>
    </div>
    <div id="collapseTwelve" class="accordion-body collapse">
      <div class="accordion-inner">
        Guests must be at least age 20.
      </div>
    </div>
  </div>
   <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse13">
        Does your Boston Hotel have a Swimming Pool?
      </a>
    </div>
    <div id="collapse13" class="accordion-body collapse">
      <div class="accordion-inner">
        The Allegra Hotel does not have an on-site Swimming Pool. Ask our Concierge or other Guest Services Representative for assistance with local Swimming Pool options.
      </div>
    </div>
  </div>
   <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse13">
        Does your Boston Hotel have a Business Center?
      </a>
    </div>
    <div id="Div1" class="accordion-body collapse">
      <div class="accordion-inner">
        Allegra Hotel has an On-Site Business Center available 24-Hours Daily, featuring personal computers, laptop connection, printing, faxing, and wireless internet services.
      </div>
    </div>
  </div>
   <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse15">
        Does your Allegra Hotel have a Fitness Center? What kind of equipment does it have? What are the hours?
      </a>
    </div>
    <div id="collapse15" class="accordion-body collapse">
      <div class="accordion-inner">
       Our Allegra Hotel has an On-Site Fitness Center. The Fitness Center is complimentary for guest use, available 24 hours per day. The Fitness Center offers Stair Climbers, Stationary Bikes, Treadmills, and Free Weights. Workout towels and water are also available, complimentary.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse16">
       Do you have High-Speed and/or Wireless Internet access available? How much do you charge?
      </a>
    </div>
    <div id="collapse16" class="accordion-body collapse">
      <div class="accordion-inner">
       There is a $12.50 High-Speed Internet Access charge for 24-hours.
      </div>
    </div>
  </div>
        <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse17">
        Do you allow smoking on property or in your Guest Rooms?
      </a>
    </div>
    <div id="collapse17" class="accordion-body collapse">
      <div class="accordion-inner">
       The Allegra Hotel is a 100% non-smoking Hotel. Smoking is permitted in the smoking room located at the Entrance of the Hotel.
      </div>
    </div>
  </div>
     <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse18">
        Do you have onsite laundry/valet service?
      </a>
    </div>
    <div id="collapse18" class="accordion-body collapse">
      <div class="accordion-inner">
       The Allegra Hotel provides fast, efficient overnight laundry and valet services. Laundry bags and order forms are locate in the guest room closet.
      </div>
    </div>
  </div>
     <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse19">
        What amenities are in your guest room?
      </a>
    </div>
    <div id="collapse19" class="accordion-body collapse">
      <div class="accordion-inner">
       Special amenities help make your stay more comfortable, like the mini-refrigerator, workstation and nesting table, laptop safe, coffee maker, and iron/ironing board. 
      </div>
    </div>
  </div>
     <div class="accordion-group">
    <div class="accordion-heading">
      <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapse20">
        What are included in the package?
      </a>
    </div>
    <div id="collapse20" class="accordion-body collapse">
      <div class="accordion-inner">
       The Allegra Hotel packages includes one or two different type of rooms that you can choose and the lasted hot offers, such as on shown movies, galleries, shows and plays, restaurant discounts, tours and so on.
      </div>
    </div>
  </div>
</div>
</asp:Content>

