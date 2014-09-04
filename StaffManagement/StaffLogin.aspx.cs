using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

public partial class StaffManageSystem_StaffLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //the "ConnStringName" is the name of your Connection String that was set up from the Web.Config 
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string sql = "Select COUNT(*)from Staff where userName=@userName and password=@password";


            SqlCommand com = new SqlCommand(sql, con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@userName", TextBox1.Text.ToString());   //for username 
            com.Parameters.AddWithValue("@password", TextBox2.Text.ToString());  //for password

            int usercount = (Int32)com.ExecuteScalar();// for taking single value     
            if (usercount == 1)  // comparing users from table 
            {
                Session["sUserName"] = TextBox1.Text;
                Response.Redirect("CustomerManagement.aspx");  //for sucsseful login
            }
            else
            {
                con.Close();
                MessageBox.Show("Invalid username or password.", "Error!"); //for invalid login
            }
        }
        catch (SqlException sql)
        {
            string msg = "Insert Error:";
            msg += sql.Message;
            throw new Exception(msg);
        }
    }
}