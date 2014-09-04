using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reservation_Staff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [staffNo], [userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo] FROM [Staff] "+
                                       "WHERE [userName] = '" + Session["sUserName"].ToString() + 
                                       "' AND [password] IS NOT NULL";
        SqlDataSource2.SelectCommand = "SELECT [staffNo], [userName], [password], [firstName], [lastName], [phoneNo], [position], [branchNo] FROM [Staff] " +
                                       "WHERE [userName] <> '" + Session["sUserName"].ToString() +
                                       "' AND [password] IS NOT NULL"; 
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewStaff.aspx");
    }
    protected void Gridview1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = e.Exception.Message;
        }
        e.ExceptionHandled = true;
    }
}