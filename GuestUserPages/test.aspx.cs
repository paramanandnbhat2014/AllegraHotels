using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "SELECT branchName, typeName, numOfPeople, t.price, s.checkinDate, s.checkoutDate, deposit, NumOfGuests,reservationDate " +
                                        "FROM Hotel h,RoomType t,Room r,Reservation v,ReservationRoom s, Customer c " +
                                        "WHERE c.CustomerNo = v.CustomerNo " +
                                        "AND v.reservationNo = s.reservationNo " +
                                        "AND s.RoomNo = r.RoomNo " +
                                        "AND r.roomTypeId = t.roomTypeId " +
                                        "AND r.branchNo = h.branchNo " +
                                        " AND [userName] = '" + Session["cUserName"] +
                                        "' AND [ContactNo] IS NOT NULL";
        SqlDataSource4.SelectCommand = "SELECT packageName,p.price,t.typeName,offerName,startDate,endDate " +
                                        "FROM RoomType t,Reservation v,ReservationPackage d, Package p,Offering o, Customer c " +
                                        " WHERE p.roomTypeId = t.roomTypeId " +
                                        " AND p.offeringId = o.offeringId " +
                                        " AND v.CustomerNo = c.CustomerNo " +
                                        " AND v.reservationNo = d.reservationNo " +
                                        " AND d.packageNo = p.packageNo" +
                                        " AND [userName] = '" + Session["cUserName"] +
                                        "' AND [ContactNo] IS NOT NULL";
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}