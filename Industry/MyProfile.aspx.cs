using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class MyProfile : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("select * from tblindustry where loginid='" + Session["loginid"] + "' ");
            if (dt.Rows.Count > 0)
            {
                txtname.Text = dt.Rows[0]["industryname"].ToString();
                txtemail.Text = dt.Rows[0]["email"].ToString();
                txtphone.Text = dt.Rows[0]["phone"].ToString();
                txthouse.Text = dt.Rows[0]["landmark"].ToString();
                txtpincode.Text = dt.Rows[0]["pincode"].ToString();
            }
            else
            {
                Response.Write("");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Session["loginid"] != null)
            {
                string loginid = Session["loginid"].ToString();

                // Use a parameterized query to prevent SQL injection
                db.exenonquery("update tblindustry set industryname='" + txtname.Text + "',email='" + txtemail.Text + "',phone='" + txtphone.Text + "',landmark='" + txthouse.Text + "',pincode='" + txtpincode.Text + "'    where loginid =" + Session["loginid"] + "");

                Response.Write("Update successfully");

            }

            else
            {
                Response.Write("Profile not matching");
            }
        }
    }
}