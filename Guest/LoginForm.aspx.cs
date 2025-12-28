using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Guest
{
    public partial class LoginForm : System.Web.UI.Page

    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      


        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("select * from tbllogin where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'");
            if (dt.Rows.Count == 1)
            {
                Session["loginid"] = dt.Rows[0]["loginid"].ToString();
                Session["uname"] = dt.Rows[0]["username"].ToString();

                if (dt.Rows[0]["role"].ToString() == "Admin")
                {
                    Response.Redirect("../Admin/AdminHome.aspx");
                }
                if (dt.Rows[0]["role"].ToString() == "industry")
                {
                    Response.Redirect("../Industry/IndustryHome.aspx");
                }
                if (dt.Rows[0]["role"].ToString() == "customer")
                {
                    Response.Redirect("../Customer/CustomerHome.aspx");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Username and Password!!')</script>");
            }
        }



     

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPass.aspx");
        }
    }
}

