using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class IndustrypackegeReport : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                db.fillddl("select * from tblindustry", ddlindustry, "industryname", "industryid");

            }

        }

        protected void ddlindustry_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillgrid("select  s.*, c.*, r.* from tblrequest r inner join tblcustomer c on r.customerid = c.customerid inner join tblsection s on r.sectionid = s.sectionid where r.industryid=" + ddlindustry.SelectedValue + "", GridView1);


        }
    }
}