using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Customer
{
    public partial class ConformationView : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            db.fillgrid("select  s.*,r.* from tblrequest r inner join  tblsection s on r.sectionid = s.sectionid  where customerid='" + Session["loginid"] + "'", GridView1);

        }
    }
}