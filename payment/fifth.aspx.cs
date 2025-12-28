using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.payment
{
    public partial class fifth : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblAmoubnt.Text = Session["amount"].ToString();
                lblMurchant.Text = "BeLive";
                lblTID.Text = "6034563456789867";
                lblDate.Text = DateTime.Now.Date.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int payamount = Convert.ToInt32(Session["amount"].ToString());
            int balanceamount = Convert.ToInt32(Session["amount"].ToString());
            if (payamount > balanceamount)
            {
                Response.Write("No Sufficient amount");
            }
            else
            {

                int amount = balanceamount - payamount;
                DateTime registerdate = Convert.ToDateTime(lblDate.Text);
                string register_date = registerdate.Date.ToString("MM-dd-yyyy");
                string str = "insert into tblbank values(" + Session["accno"] + "," + lblTID.Text + "," + lblAmoubnt.Text + ",'" + register_date + "','paymentsuccess')";
                Response.Write(str);
                db.exenonquery(str);
                db.exenonquery("update tblpayment set amount=" + amount + " where username='" + Session["username"] + "'");
                db.exenonquery("update tblrequest set status='PAID'");
                DateTime dt = Convert.ToDateTime(lblDate.Text);

               
               
            }
            Response.Redirect("../Customer/CustomerHome.aspx");
            //con.ExecuteData(str);
            ////string sel = "select max(ad_id)as payment from tbl_ad where user_id="+Session["uid"]+"";
            ////DataTable dt = obj.GetDataTable(sel);
            ////string up = "update tbl_ad set ad_status=1 where ad_id="+dt.Rows[0]["payment"]+"";
            ////obj.ExecuteCommand(up);


        }
    }
    }
