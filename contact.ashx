<%@ WebHandler Language="C#" Class="contact" %>

using System;
using System.Web;
using System.Net.Mail;

public class contact : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        MailMessage message = new MailMessage();
        message.From = new MailAddress("info@suenotrip.com");

        message.IsBodyHtml = false;

        // Proper Authentication Details need to be passed when sending email from gmail
        System.Net.NetworkCredential mailAuthentication = new
            System.Net.NetworkCredential("info@suenotrip.com", "information");

        // Smtp Mail server of Gmail is "smpt.gmail.com" and it uses port no. 587
        // For different server like yahoo this details changes and you can
        // Get it from respective server.
        System.Net.Mail.SmtpClient mailClient = new System.Net.Mail.SmtpClient("smtpout.asia.secureserver.net", 80);
       
        // Enable SSL
        //mailClient.EnableSsl = true;
        mailClient.UseDefaultCredentials = false;
        mailClient.Credentials = mailAuthentication;        
    
        //add accounts to notify
        message.To.Add(new MailAddress("info@suenotrip.com"));      
        
        string name = context.Request.Params["name"];
        string email = context.Request.Params["email"];
        string phone = context.Request.Params["phone"];
        string msg = context.Request.Params["message"];        
        
        message.Subject = "[New Web Contact]: Message from "+ name;
        System.Text.StringBuilder builder = new System.Text.StringBuilder();        
        builder.AppendLine("Name:"+ name);
        builder.AppendLine("email: "+ email);
        builder.AppendLine("phone: " + phone);
        builder.AppendLine("Message: " + msg);

        message.Body = builder.ToString();


        mailClient.Send(message);
        context.Response.Redirect("contact.aspx");             
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}