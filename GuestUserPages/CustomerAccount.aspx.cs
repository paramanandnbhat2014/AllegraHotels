using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows.Controls;

public partial class CustomerAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [CustomerNo],[firstName], [lastName], [DateOfBirth], [street], [suburb], [city], [ContactNo], [email], [mailingList], [cardNumber] " +
                                       "FROM [Customer] " +
                                       "WHERE [userName] = '" + Session["cUserName"] + 
                                       "' AND [ContactNo] IS NOT NULL";
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
        
        WrongPasswd.Visible = false;
        passwdNotMatch.Visible = false;
        SuccessMessage.Visible = false;
    }

    protected void Confrim_Click(object sender, EventArgs e)
    {
        if (OldPasswdText.Text == Session["cPassword"].ToString())
        {
            string newPasswd = NewPasswdText.Text;
            string rePasswd = ReEnterText.Text;
            if (newPasswd == rePasswd)
            {
                SqlDataSource3.UpdateParameters["password"].DefaultValue = newPasswd;
                SqlDataSource3.UpdateParameters["userName"].DefaultValue = Session["cUserName"].ToString();
                SqlDataSource3.Update();
                OldPasswdLabel.Visible = false;
                OldPasswdText.Visible = false;
                NewPasswdLabel.Visible = false;
                NewPasswdText.Visible = false;
                ReEnterLabel.Visible = false;
                ReEnterText.Visible = false;
                Confirm.Visible = false;
                Reset.Visible = false;
                SuccessMessage.Visible = true;
            }
            else
            {
                passwdNotMatch.Visible = true;
                OldPasswdText.Text = string.Empty;
                NewPasswdText.Text = string.Empty;
                ReEnterText.Text = string.Empty;
            }
        }
        else
        {
            WrongPasswd.Visible = true;
            OldPasswdText.Text = string.Empty;
            NewPasswdText.Text = string.Empty;
            ReEnterText.Text = string.Empty;
        }
        
    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        OldPasswdText.Text = string.Empty;
        NewPasswdText.Text = string.Empty;
        ReEnterText.Text = string.Empty;
    }

    protected void sumbitRating_Click(object sender, EventArgs e)
    {
 
    }
}