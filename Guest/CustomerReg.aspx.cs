using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Guest
{
    public partial class CustomerReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                db.fillddl("select * from tbldistrict", ddldistrict, "districtname", "districtid");
                //db.fillddl("select * from tbllocation", ddllocation, "locationname", "locationid");

            }

        }
        

        protected void Unnamed13_Click(object sender, EventArgs e)
        {
            DateTime aDate = DateTime.Now;
            object ob = db.exescalar("insert into tbllogin values('" + txtuname.Text + "','" + txtpass.Text + "','customer','Confirmed');select @@IDENTITY");
            db.dbclose();
            if (ob.ToString() != null)
            {
                int i = db.exenonquery("insert into tblcustomer values('" + txtname.Text + "','" + txthouse.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtpin.Text + "'," + ddldistrict.SelectedValue + "," + ddllocation.SelectedValue + ",'" + file1.FileName + "','" + aDate.ToString("MM/dd/yyyy") + "'," + ob.ToString() + ")");
                file1.SaveAs(Server.MapPath("~/upload/" + file1.FileName));
                db.dbclose();

                if (i == 1)
                {
                    string to = txtemail.Text; //To address 
                    string from = "gintojosegeorge70@gmail.com"; //From address 
                    System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(from, to);
                    string mailbody = "Thank you for reaching us.You have been successfully registered to our website."; //mail content here
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
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }

                    Response.Write("<script>alert('Success!')</script>");
                }
                else
                {
                    db.exenonquery("delete from tbllogin where loginid='" + ob.ToString() + "'");
                    Response.Write("<script>alert('Failed!')</script>");
                }

            }
        }

        protected void Unnamed14_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtemail.Text = "";
            txthouse.Text = "";
            txtphone.Text = "";
            ddldistrict.ClearSelection();
            ddllocation.ClearSelection();

        }

        protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillddl("select * from tbllocation where districtid='" + ddldistrict.SelectedValue + "'", ddllocation, "locationname", "locationid");
        }
    }
}
    
