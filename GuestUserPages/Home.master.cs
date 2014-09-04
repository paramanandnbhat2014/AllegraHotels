using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class Header : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LogoutButton.Visible = false;
        myAccount.Visible = false;
        if (Session["cUserName"] != null)
        {
            LoginMessage.Visible = true;
            userNameTextBox.Visible = false;
            passwdTextBox.Visible = false;
            LoginMessage.Text = "Welcome to Allegra Hotel! " + Session["cUserName"] + " ";
            LoginButton.Visible = false;
            JoinButton.Visible = false;
            LogoutButton.Visible = true;
            myAccount.Visible = true;
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        try
        {
            //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config 
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string sql = "Select COUNT(*)from Customer where userName=@userName and password=@password";


            SqlCommand com = new SqlCommand(sql, con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@userName", userNameTextBox.Text.ToString());   //for username 
            com.Parameters.AddWithValue("@password", passwdTextBox.Text.ToString());  //for password

            int usercount = (Int32)com.ExecuteScalar();// for taking single value     
            if (usercount == 1)  // comparing users from table 
            {
                Session["cUserName"] = userNameTextBox.Text;
                Session["cPassword"] = passwdTextBox.Text;
                Response.Redirect(Request.RawUrl);  //for sucsseful login 
            }
            else
            {
                Session["cUserName"] = null;
                con.Close();
                //LoginMessage.Visible = true;
                //LoginMessage.Text = "Invalid User Name or Password";  //for invalid login
                MessageBox.Show("Invalid User Name or Password","Notice!");

            }
        }
        catch (SqlException sql)
        {
            string msg = "Insert Error:";
            msg += sql.Message;
            throw new Exception(msg);
        }
    }
    protected void JoinButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("JoinPage.aspx");
    }

    protected void LogoutButton_Click(object sender, EventArgs e)
    {
        Session.Remove("cUserName");
        Session.Remove("cPassword");
        Response.Redirect(Request.RawUrl);
    }
}
