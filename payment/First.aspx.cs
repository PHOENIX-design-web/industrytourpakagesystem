using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace industrytourpakagesystem.payment
{
    public partial class First : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            string aid = Request.QueryString["aid"].ToString();
            Session["amount"] = aid;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "Select accno,amount from tblpayment where username='" + Session["uname"].ToString() + "' and accno='" + TextBox1.Text + "'";
            DataTable dt = db.exedatatable(s);
            if (dt.Rows.Count == 1)
            {

                if (check.Checked == true)
                {
                    Session["accno"] = TextBox1.Text;
                    Session["balanceamount"] = dt.Rows[0]["amount"].ToString();
                    Response.Redirect("Second.aspx");

                }
                else
                {
                    Label1.Text = "Please accept the Terms & Conditions";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label1.Text = "wrong account number or confirmation pin";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}