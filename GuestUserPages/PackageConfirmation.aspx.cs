using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class PackageConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.SelectCommand = "SELECT * FROM Customer WHERE userName = '" + Session["cUserName"] + "'";
        SqlDataSource3.SelectCommand = "SElECT p.packageNo , p.packageName, r.typeName , o.offerName , p.price , o.startDate , o.endDate FROM Package p , Offering o , RoomType r WHERE packageName = '" + Session["packageName"] + "' " + " AND o.offerName = '" +Session["offerName"] + "' AND p.offeringId = o.offeringId AND p.roomTypeId = r.roomTypeId";
    }

    private string customerNum;
    private string packageNum;

    protected void Button1_Click1(object sender, EventArgs e)
    {

        foreach (ListViewItem item in ListView10.Items)
        {
            Label customerNo = (Label)item.FindControl("customerNoLabel");
            customerNum = customerNo.Text.ToString();
            Session["customerNo"] = customerNum;
            Session["bookingType"] = "package";
        }

        foreach (ListViewItem item in ListView11.Items)
        {
            Label packageNo = (Label)item.FindControl("packageNoLabel");
            packageNum = packageNo.Text.ToString();
            Session["packageNo"] = packageNum;
        }
        Response.Redirect("PaymentInfo.aspx");
/*
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
            param[2].Value = Int32.Parse(customerNum);
            param[3].Value = Int32.Parse(packageNum);


            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }
            cmd.CommandType = CommandType.Text;
            int r = cmd.ExecuteNonQuery();



            if (r != 0)
            {
                Server.Transfer("Receipt.aspx");
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
*/
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Server.Transfer("PackagePage.aspx");
    }
}