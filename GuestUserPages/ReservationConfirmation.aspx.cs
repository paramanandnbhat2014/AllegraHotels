using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Reservation_ReservationConfirmation : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "SELECT * FROM Customer WHERE userName = '" + Session["cUserName"] +"'";
        SqlDataSource3.SelectCommand = "SElECT r.RoomNo, t.typeName,  t.Price, h.branchName FROM Room r, RoomType t, Hotel h WHERE t.typeName = '" + Session["typeName"] + "' AND h.branchName = '"+ Session["branch1"] + "' AND r.roomNo = ( SELECT MAX(a.RoomNo) FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"]+")";

    }

    private string customerNum;
    private string roomNum;

    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        foreach (ListViewItem item in ListView10.Items)
        {
            Label customerNo = (Label)item.FindControl("customerNoLabel");
            customerNum = customerNo.Text.ToString();

            Session["customerNo"] = customerNum;
            Session["bookingType"] = "room";
            Response.Redirect("PaymentInfo.aspx");
        }

    }

    protected string GetCheckin()
    {
        return Session["checkin1"].ToString();
    }

    protected string GetCheckout()
    {
        return Session["checkout1"].ToString();
    }

    protected string GetNumOfRoom()
    {
        return Session["room1"].ToString();
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("AvailableRooms.aspx");
    }
}