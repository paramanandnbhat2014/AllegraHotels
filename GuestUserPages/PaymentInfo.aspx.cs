using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Reservation_PaymentInfo : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cardnumber.Visible = false;
            name.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Session["creditCard"] = TextBox1.Text;


        if (TextBox1.Text == "")
        {
            cardnumber.Visible = true;
            name.Visible = false;
        }
        else if(TextBox2.Text == "")
        {
            cardnumber.Visible = false;
            name.Visible = true;
        }
        else
        {

            if (Session["bookingType"].ToString() == "room")
            {
                //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config 
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
                SqlConnection con = new SqlConnection(str);

                try
                {

                    con.Open();

                    string sql = " INSERT INTO [Reservation] (payment, NumOfGuests, calculateAmount,NumOfRooms, reservationDate,CustomerNo) VALUES " + " (@payment,@numberOfGuest,@calculateAmount,@numberOfRoom,GETDATE(),@CustomerNo) ";

                    SqlCommand cmd = new SqlCommand(sql, con);
                    SqlParameter[] param = new SqlParameter[5];
                    param[0] = new SqlParameter("@payment", SqlDbType.Bit);
                    param[1] = new SqlParameter("@numberOfGuest", SqlDbType.Int);
                    param[2] = new SqlParameter("@calculateAmount", SqlDbType.Money);
                    param[3] = new SqlParameter("@numberOfRoom", SqlDbType.Int);
                    param[4] = new SqlParameter("@CustomerNo", SqlDbType.Int);

                    param[0].Value = true;
                    param[1].Value = Int32.Parse(Session["adult1"].ToString());
                    param[2].Value = Session["price"];
                    param[3].Value = Int32.Parse(Session["room1"].ToString());
                    param[4].Value = Int32.Parse(Session["customerNo"].ToString());


                    for (int i = 0; i < param.Length; i++)
                    {
                        cmd.Parameters.Add(param[i]);
                    }
                    cmd.CommandType = CommandType.Text;
                    int r = cmd.ExecuteNonQuery();

                    int numOfRoom = Int32.Parse(Session["room1"].ToString());

                    for (int i = 0; i < numOfRoom; i++)
                    {

                        sql = "INSert INTO [ReservationRoom] (reservationNo,RoomNo,checkinDate,checkoutDate) VALUES " + " ((SELECT MAX(reservationNo) FROM Reservation),((SElECT r.RoomNo FROM Room r, RoomType t, Hotel h WHERE t.typeName = '" + Session["typeName"] + "' AND h.branchName = '" + Session["branch1"] + "' AND r.roomNo = ( SELECT MAX(a.RoomNo) FROM Room r, Hotel h, (SELECT RoomNo FROM ReservationRoom WHERE checkinDate > CONVERT(date, '" + Session["checkout1"] + "', 103) OR checkoutDate <  CONVERT(date, '" + Session["checkin1"] + "' , 103) UNION SELECT RoomNo FROM Room WHERE RoomNo NOT IN (SELECT RoomNo FROM ReservationRoom)) a, RoomType t WHERE r.RoomNo = a.RoomNo AND r.roomTypeId = t.roomTypeId AND h.branchNo = r.branchNo AND h.branchName = '" + Session["branch1"].ToString() + "' AND t.numOfPeople = " + Session["adult1"] + "))),CONVERT(date, '" + Session["checkin1"] + "', 103),CONVERT(date, '" + Session["checkout1"] + "' , 103)) ";

                        cmd = new SqlCommand(sql, con);
                        cmd.CommandType = CommandType.Text;
                        r = cmd.ExecuteNonQuery();

                    }

                    if (r != 0)
                    {
                        Response.Redirect("Receipt.aspx");
                    }

                }
                catch (SqlException sql)
                {
                    string msg = "Insert Error:";
                    msg += sql.Message;
                    throw new Exception(msg);
                }
                finally
                {
                    con.Close();
                }
            }
            else if (Session["bookingType"].ToString() == "package")
            {
                //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config 
                string str = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
                SqlConnection con = new SqlConnection(str);

                try
                {

                    con.Open();
                    //string sql = "Delete from Customer;";

                    string sql = " INSERT INTO [Reservation] (payment, NumOfGuests, calculateAmount, reservationDate,CustomerNo) VALUES " + " (@payment,(SELECT DISTINCT r.numOfPeople FROM Package p , RoomType r WHERE p.roomTypeId = r.roomTypeId AND p.packageNo = @packageNo),@calculateAmount,GETDATE(),@CustomerNo)" +
                                 "INSert INTO [ReservationPackage] (reservationNo,packageNo) VALUES " + " ((SELECT MAX(reservationNo) FROM Reservation),@packageNo) ";

                    SqlCommand cmd = new SqlCommand(sql, con);
                    SqlParameter[] param = new SqlParameter[4];
                    param[0] = new SqlParameter("@payment", SqlDbType.Bit);
                    param[1] = new SqlParameter("@calculateAmount", SqlDbType.Money);
                    param[2] = new SqlParameter("@CustomerNo", SqlDbType.Int);
                    param[3] = new SqlParameter("@packageNo", SqlDbType.Int);

                    param[0].Value = true;
                    param[1].Value = Session["price"];
                    param[2].Value = Int32.Parse(Session["customerNo"].ToString());
                    param[3].Value = Int32.Parse(Session["packageNo"].ToString());


                    for (int i = 0; i < param.Length; i++)
                    {
                        cmd.Parameters.Add(param[i]);
                    }
                    cmd.CommandType = CommandType.Text;
                    int r = cmd.ExecuteNonQuery();



                    if (r != 0)
                    {
                        Response.Redirect("Receipt.aspx");
                    }

                }
                catch (SqlException sql)
                {
                    string msg = "Insert Error:";
                    msg += sql.Message;
                    throw new Exception(msg);
                }
                finally
                {
                    con.Close();
                }
            }
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ReservationConfirmation.aspx");
    }
}