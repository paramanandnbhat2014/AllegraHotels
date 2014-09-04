using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffManageSystem_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT [firstName], [lastName], [position], [staffNo] FROM [Staff] WHERE [userName] = '" + Session["sUserName"] + "'";
    }
    protected void LogoutButton_Click(object sender, EventArgs e)
    {
        Session.Remove("sUserName");
        Response.Redirect("StaffLogin.aspx");
    }
}
