using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.payment
{
    public partial class second : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //object t = db.exescalar("select sum(totalamount) from tblcart where customerid=6"); // and status=0
                lbl_Amount.Text = Session["amount"].ToString(); 
                lblCardNumber.Text = Session["accno"].ToString();
                lbl_Payto.Text = " Santhisoft";
                lbl_Amount.Text = Session["amount"].ToString();
            }
        }

        //protected void lblCopyIt_Click(object sender, EventArgs e)
        //{
        //    string sel = "select * from tblCustomer_reg where loginid='" + Session["loginid"] + "'";
        //    DataTable dt = db.exedatatable(sel);
        //    if (dt.Rows.Count == 1)
        //    {
        //        txtName.Text = dt.Rows[0]["name"].ToString();
        //        //txtAddress.Text = con.rdr.GetValue(1).ToString();
        //        //txtPlace.Text = con.rdr.GetValue(2).ToString();
        //        //txtState.Text = con.rdr.GetValue(5).ToString();
        //        //txtEmail.Text = con.rdr.GetValue(3).ToString();
        //        //txtPhone.Text = con.rdr.GetValue(4).ToString();
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Third.aspx");
        }
    }
}