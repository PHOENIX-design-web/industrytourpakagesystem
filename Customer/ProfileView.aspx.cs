using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Customer
{
    public partial class ProfileView : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

 if(!IsPostBack)
            {
                DataTable dt = db.exedatatable("select * from tblcustomer where loginid='" + Session["loginid"] + "' ");
                if (dt.Rows.Count > 0)
                {
                    txtname.Text = dt.Rows[0]["customername"].ToString();
                    txtemail.Text = dt.Rows[0]["email"].ToString();
                    txtphone.Text = dt.Rows[0]["phone"].ToString();
                    txthouse.Text = dt.Rows[0]["housename"].ToString();
                    txtpincode.Text = dt.Rows[0]["pincode"].ToString();
                }
                else
                {
                    Response.Write("");
                }
            }
        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["loginid"] != null)
            {
                string loginid = Session["loginid"].ToString();

                // Use a parameterized query to prevent SQL injection
                db.exenonquery("update tblcustomer set customername='" + txtname.Text + "',email='" + txtemail.Text + "',phone='" + txtphone.Text + "',housename='" + txthouse.Text + "',pincode='" + txtpincode.Text + "'    where loginid =" + Session["loginid"] + "");

                Response.Write("Update successfully");

            }

            else
            {
                Response.Write("Profile not matching");
            }
        }
    }

}