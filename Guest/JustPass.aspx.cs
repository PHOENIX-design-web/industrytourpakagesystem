using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Guest
{
    public partial class JustPass : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        static string GenerateRandomString(int length)
        {
            const string chars =
           "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length)
            .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("select * from tbllogin where username='" + txtuname.Text + "' ");
            if (dt.Rows.Count == 1)
            {
                string lid = dt.Rows[0]["loginid"].ToString();
                string role = dt.Rows[0]["Role"].ToString();


                Random random = new Random();
                int randomNumber = random.Next();

                // Generate a random string
                string randomString = GenerateRandomString(10); // Change 10 to the desired length of the string

                if (role == "industry")
                {
                    DataTable dt1 = db.exedatatable("select * from tblindustry where loginid=" + Convert.ToInt32(lid) + " ");
                    if (dt1.Rows.Count == 1)
                    {
                        //mail send
                        string to = dt1.Rows[0]["email"].ToString(); //To address 
                        string from = "aryasunil930@gmail.com"; //From address 
                        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(from, to);
                        string mailbody = "Your Password is: '" + randomString + "'"; //mail content here
                        message.Subject = "Password Changed Successfully"; //mail subject 
                        message.Body = mailbody; message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
                        System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential("aryasunil930@gmail.com", "yxev tvmk arjr uxld");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = true;
                        // client.UseDefaultCredentials = false; 
                        client.Credentials = basicCredential1;
                        try
                        {
                            client.Send(message);

                            int i = db.exenonquery("update tbllogin set password='" + randomString + "' where loginid='" + dt.Rows[0]["loginid"] + "'");
                            db.dbclose();
                            if (i == 1)
                            {
                                Response.Write("<script>alert('Password changed successfully....Verify your mail.....')</script>");

                                //Response.Redirect("ChangePass.aspx");
                            }

                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }

                    }
                }
                else if (role == "customer")
                {
                    DataTable dt2 = db.exedatatable("select * from tblcustomer where loginid=" + Convert.ToInt32(lid) + " ");
                    if (dt2.Rows.Count == 1)
                    {
                        //mail send
                        string to = dt2.Rows[0]["email"].ToString(); //To address 
                        string from = "aryasunil930@gmail.com"; //From address 
                        System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(from, to);
                        string mailbody = "Your Password is: '" + randomString + "'"; //mail content here
                        message.Subject = "Password Changed Successfully"; //mail subject 
                        message.Body = mailbody; message.BodyEncoding = Encoding.UTF8;
                        message.IsBodyHtml = true;
                        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
                        System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential("aryasunil930@gmail.com", "yxev tvmk arjr uxld");
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = true;
                        // client.UseDefaultCredentials = false; 
                        client.Credentials = basicCredential1;
                        try
                        {
                            client.Send(message);

                            int i = db.exenonquery("update tbllogin set password='" + randomString + "' where loginid='" + dt.Rows[0]["loginid"] + "'");
                            db.dbclose();
                            if (i == 1)
                            {
                                Response.Write("<script>alert('Password changed successfully....Verify your mail.....')</script>");

                                //Response.Redirect("ChangePass.aspx");
                            }

                        }
                        catch (Exception ex)
                        {
                            throw ex;
                        }

                    }
                }
                else
                {
                    Response.Write("<script>alert('Email  Is Incorect..!'</script>");
                }




                // Response.Write("<script>alert('Success!')</script>");
                //end 




            }

            else
            {
                Response.Write("<script>alert('Username  Is Incorect..!'</script>");
            }
        }
    }
    
}