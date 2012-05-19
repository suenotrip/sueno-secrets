using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

public partial class _default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!isEmail(email.Text))
        {
            email.Text = "";
            labelErrorMessage.Text = "Invalid email-id";
        }
        else
        {
            //ExecuteInsert(email.Text);
            

            //test mail
            string from = "info@suenotrip.com"; //Replace this with your own correct Gmail Address
            string password = "information";
            string to = email.Text; //Replace this with the Email Address to whom you want to send the mail
            MailMessage mail = new MailMessage();
            mail.To.Add(to);
            mail.From = new MailAddress(from, "suenotrip", System.Text.Encoding.UTF8);
            mail.Subject = "Welcome to SuenoTrip";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            //mail.Body = "Greetings! </br> </br>You are now registered on SuenoTrip.com . We are happy to inform that you are one amongst the    selected group to receive an early preview of SuenoTrip.";
            mail.Body = "<html><head></head><body><div><h1><i>Suenotrip | Your Price. Our Plan</i></h1><a href='http://suenotrip.com' target='_blank'><img src='http://files.icontact.com/templates/v2/SnowcapsPostcardBlack/images/image.jpg' width='800' height='400'></a> <p>Greetings!</p><p>You are now registered on <a href='http://suenotrip.com' target='_blank'>SuenoTrip.com.</a> We are happy to inform that you are one amongst the selected group to receive an early preview of SuenoTrip.</p><p><a href='http://suenotrip.com' target='_blank'>SuenoTrip.com</a> lets you complete your dream trip at the price YOU quote.<br> We will plan a customized and tailored itinerary for you, keeping your preferences and budget in mind. <br>We think out of the box and give you exactly what you want. <br> <b>It&#39;s Your Price, Our Plan.</b></p> <p>Invite your friends to sign-up now via <a href='http://facebook.com/suenotrip' target='_blank'>Facebook</a>, <a href='http://twitter.com/suenotrip' target='_blank'>Twitter</a> or email this link <a href='http://suenotrip.com' target='_blank'>http://SuenoTrip.com</a> and be one of the privileged SuenoTraveller!!</p><p>Welcome aboard!</p> <p><br> <h3>SuenoTrip.com</h3></p><p>Phone: <i>919.686.675.387</i> | Email - <a href='mailto:info@suenotrip.com' target='_blank'><i>info@suenotrip.com</i></a><br> Website: <a href='http://suenotrip.com' target='_blank'><i>www.suenotrip.com</i></a> </p> <p><a href='http://www.facebook.com/suenotrip' target='_blank'><img src='http://www.freeimagehosting.net/newuploads/bqo3z.png' height='50'></a><a href='http://www.twitter.com/suenotrip' target='_blank'><img src='http://www.freeimagehosting.net/newuploads/ier4z.png' height='50'></a><a href='http://www.linkedin.com/company/suenotrip' target='_blank'><img src='http://www.freeimagehosting.net/newuploads/nv5xs.png' height='50'></a><a href='mailto:info@suenotrip.com' target='_blank'><img src='http://www.freeimagehosting.net/newuploads/ek1q2.png' height='50'></a></p></div></body></html>";
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            SmtpClient client = new SmtpClient();
            //Add the Creddentials- use your own email id and password
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential(from, password);
            client.Port = 80; // Gmail works on this port
            //client.Host = "smtp.gmail.com";
            client.Host = "smtpout.asia.secureserver.net";
            //client.Host = "relay-hosting.secureserver.net";
            //client.EnableSsl = true; //Gmail works on Server Secured Layer  
            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                HttpContext.Current.Response.Write(errorMessage);
            } // end try 

            Response.Redirect("confirmation.aspx");
        }


    }
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["MyConsString"].ConnectionString;
    }
    private void ExecuteInsert(string email)
    {
        SqlConnection conn = new SqlConnection(GetConnectionString());
        string sql = "INSERT INTO suenoTraveller_email (traveller_email) VALUES "
                    + " (@email)";

        try
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlParameter[] param = new SqlParameter[1];
            //param[0] = new SqlParameter("@id", SqlDbType.Int, 20);
            param[0] = new SqlParameter("@email", SqlDbType.VarChar, 50);


            param[0].Value = email;


            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
        }
        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Insert Error:";
            msg += ex.Message;
            throw new Exception(msg);
        }
        finally
        {
            conn.Close();
        }
    }
    public static bool isEmail(string inputEmail)
    {
        string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
              @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
              @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
        Regex re = new Regex(strRegex);
        if (re.IsMatch(inputEmail))
            return (true);
        else
            return (false);
    }
}
