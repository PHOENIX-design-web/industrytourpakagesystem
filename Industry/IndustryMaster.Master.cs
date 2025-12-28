using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class IndustryHome : System.Web.UI.MasterPage
    {
        DbOperation db = new DbOperation();

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
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Guest/LoginForm.aspx");

        }
    }
}