using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AvailableRooms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT DISTINCT img, t.typeName, t.description, t.numOfPeople, t.Price FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"] + " AND t.roomTypeId = 1 ";
        SqlDataSource2.SelectCommand = "SELECT DISTINCT img, t.typeName, t.description, t.numOfPeople, t.Price FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"] + " AND t.roomTypeId = 2 ";
        SqlDataSource3.SelectCommand = "SELECT DISTINCT img, t.typeName, t.description, t.numOfPeople, t.Price FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"] + " AND t.roomTypeId = 3 ";
        SqlDataSource4.SelectCommand = "SELECT DISTINCT img, t.typeName, t.description, t.numOfPeople, t.Price FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"] + " AND t.roomTypeId = 4 ";
        SqlDataSource5.SelectCommand = "SELECT DISTINCT img, t.typeName, t.description, t.numOfPeople, t.Price FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"] + " AND t.roomTypeId = 5 ";

        Label1.Visible = false;
    }


    protected void Book_Click1(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView1.Items)
            {
                Label typeName = (Label)item.FindControl("typeNameLabel");
                Session["typeName"] = typeName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();
            }
            
            Response.Redirect("ReservationConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click2(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView2.Items)
            {
                Label typeName = (Label)item.FindControl("typeNameLabel");
                Session["typeName"] = typeName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();

            }

            Response.Redirect("ReservationConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click3(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView3.Items)
            {
                Label typeName = (Label)item.FindControl("typeNameLabel");
                Session["typeName"] = typeName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();
 
            }

            Response.Redirect("ReservationConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click4(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView4.Items)
            {
                Label typeName = (Label)item.FindControl("typeNameLabel");
                Session["typeName"] = typeName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();
 
            }

            Response.Redirect("ReservationConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
    }

    protected void Book_Click5(object sender, EventArgs e)
    {
        if (Session["cUserName"] != null)
        {
            foreach (ListViewItem item in ListView5.Items)
            {
                Label typeName = (Label)item.FindControl("typeNameLabel");
                Session["typeName"] = typeName.Text.ToString();

                Label price = (Label)item.FindControl("priceLabel");
                Session["price"] = price.Text.ToString();
 
            }
            Response.Redirect("ReservationConfirmation.aspx");
        }
        else
        {
            Label1.Visible = true;
        }

    }
}