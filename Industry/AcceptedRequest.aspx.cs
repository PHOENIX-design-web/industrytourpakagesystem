using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class AssignTeam : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            db.fillgrid("select c.*,i.*, s.* ,r.* from tblrequest r inner join tblindustry i on r.industryid = i.industryid inner join tblcustomer c on r.customerid = c.loginid inner join tblsection s on r.sectionid = s.sectionid where r.status='Confirmed'", GridView1);

        }

       
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }
}