using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reservation_GuestInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_PageIndexChanging(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["firstName"] = TextBox1.Text;
        Session["lastName"] = TextBox2.Text;
        Session["dateOfBirth"] = TextBox3.Text;
        Session["street"] = TextBox4.Text;
        Session["suburb"] = TextBox5.Text;
        Session["city"] = TextBox6.Text;
        Session["contactNo"] = TextBox7.Text;
        Session["email"] = TextBox8.Text;
        Session["mailingList"] = CheckBox1.Text;

        Server.Transfer("PaymentInfo.aspx");

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}