using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Text;

namespace industrytourpakagesystem.Guest
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        static string GenerateRandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            int randomNumber = random.Next();

            // Generate a random string
            string randomString = GenerateRandomString(10); // Change 10 to the desired length of the string

            //mail send
            string to = txtemail.Text; //To address 
            string from = "gintojosegeorge70@gmail.com"; //From address 
            System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(from, to);
            string mailbody = "Your Password is: '"+randomString+"'"; //mail content here
            message.Subject = "Registerd"; //mail subject 
            message.Body = mailbody; message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
            System.Net.NetworkCredential basicCredential1 = new System.Net.NetworkCredential("gintojosegeorge70@gmail.com", "nouqeknxfdgtxqwh");
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            // client.UseDefaultCredentials = false; 
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);

                DataTable dt = db.exedatatable("select l.*,c.* from tblcustomer c inner join tbllogin l on c.loginid=l.loginid  where c.email='" + txtemail.Text + "'");
                int i = db.exenonquery("update tbllogin set password='" + randomString + "' where loginid='" + dt.Rows[0]["loginid"] + "'");
                db.dbclose();
                if (i == 1)
                {
                    Response.Write("<script>alert('Password changed successfully....Verify your mail.....')</script>");

                    //Response.Redirect("ChangePass.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Email  Is Incorect..!'</script>");
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
           // Response.Write("<script>alert('Success!')</script>");
            //end 


           

        }
    }
}