using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Customer
{
    public partial class AcceptedRequest : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            db.filllistview("select a.*,m.*,c.*,s.*,d.*,i.* from tblassign a inner join tblmember m on a.memberid = m.memberid inner join tblindustry i on i.loginid=m.industryid inner join tbldistrict d on m.districtid = d.districtid inner join tblsection s on i.loginid = s.industryid inner join tblcustomer c on a.customerid = c.customerid  where c.loginid=' "+Session["loginid"]+"'", ListView1);

        }
        }

    }
}