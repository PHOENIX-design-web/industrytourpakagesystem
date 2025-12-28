using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class Adminmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void page_init(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Redirect("~/Guest/LoginForm.aspx");
            }
            Response.Cache.SetNoStore();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
        }

       
        protected void Button1_Click2(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("../Guest/LoginForm.aspx");

        }
    }
}