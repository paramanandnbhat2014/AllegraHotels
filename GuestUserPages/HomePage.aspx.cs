using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["branch1"] = HotelNameDrop.SelectedValue.ToString();
        Session["checkin1"] = checkInDate.Text;
        Session["checkout1"] = checkOutDate.Text;
        Session["room1"] = Request["room"];
        Session["adult1"] = Request["adult"];

        if (Session["checkin1"].ToString() != "" && Session["checkout1"].ToString() != "")
        {
            if (Convert.ToDateTime(Session["checkin1"]) >= Convert.ToDateTime(Session["checkout1"]))
            {
                MessageBox.Show("Date is invalid. Please choose agian.", "Error!");
            }
            else
            {
                Response.Redirect("AvailableRooms.aspx");
            }
        }

        else
        {
            MessageBox.Show("Date is invalid. Please choose agian.", "Error!");
        }
       
    }
}