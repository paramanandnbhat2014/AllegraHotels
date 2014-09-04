using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Windows.Forms;
public partial class GetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        successful.Visible = false;
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        if (usernamebox.Text == "" || emailbox.Text == "")
        {
            MessageBox.Show("User name and Email can not be blank!", "Error!");
            usernamebox.Text = string.Empty;
            emailbox.Text = string.Empty;
        }
        else
        {
            string str = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(str);
            con.Open();
            string username = usernamebox.Text;
            Session["enteredName"] = username;
            String sql = "SELECT password FROM Customer WHERE userName = '" + Session["enteredName"] + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                string password = myReader["password"].ToString();
                string email = emailbox.Text;

                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.EnableSsl = true;
                client.Port = 25;
                //MailMessage message = new MailMessage();
                MailAddress from = new MailAddress("kingso.bboy@gmail.com");
                MailAddress to = new MailAddress(email);
                //message.From = new MailAddress("kingso.bboy@gmail.com");
                //message.To.Add(new MailAddress("yzha401@student.monash.edu"));
                MailMessage message = new MailMessage(from, to);
                message.Subject = "Here is Your Allegra Hotel website password.";
                message.Body = "Dear Customer, your password is: " + password;
                Session.Remove("enteredName");
                client.Send(message);

                pageTitle.Visible = false;
                subtitle.Visible = false;
                usernameLabel.Visible = false;
                usernamebox.Visible = false;
                emailLabel.Visible = false;
                emailbox.Visible = false;
                submit.Visible = false;
                successful.Visible = true;
            }
        }
    }
}