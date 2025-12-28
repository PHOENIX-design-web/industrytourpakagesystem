using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class RequestView : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select i.*, c.*, s.* ,r.* from tblrequest r inner join tblcustomer c on r.customerid = c.loginid inner join tblindustry i on r.industryid = i.industryid inner join tblsection s on r.sectionid = s.sectionid where r.status='not conformed'", GridView1);
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Confirm")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rid = Convert.ToInt32(e.CommandArgument);
                db.exenonquery("update tblrequest set status='Confirmed' where requestid=" + rid + " ");
                db.fillgrid("select i.*, c.*, s.* ,r.* from tblrequest r inner join tblcustomer c on r.customerid = c.loginid inner join tblindustry i on r.industryid = i.industryid inner join tblsection s on r.sectionid = s.sectionid where r.status='not conformed'", GridView1);


            }
            if (e.CommandName == "Reject")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rid = Convert.ToInt32(e.CommandArgument);
                db.exenonquery("update tblrequest set status='Rejected' where requestid=" + rid + " ");
                db.fillgrid("select i.*, c.*, s.* ,r.* from tblrequest r inner join tblcustomer c on r.customerid = c.loginid inner join tblindustry i on r.industryid = i.industryid inner join tblsection s on r.sectionid = s.sectionid where r.status='not conformed'", GridView1);

            }

        }

    }
}