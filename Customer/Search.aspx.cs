using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Customer
{
    public partial class Search : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
        { 
            db.fillddl("select * from tbldistrict", ddldistrict, "districtname", "districtid");
            db.fillddl("select * from tblcategory", ddlcategory, "categoryname", "categoryid");
        }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db.filllistview("select i.*, d.*, c.*,t.* from tblindustry i inner join tbldistrict d on i.districtid = d.districtid inner join tblcategory c on i.categoryid = c.categoryid inner join tbldate t on t.industryid=i.loginid where d.districtid='" + ddldistrict.SelectedValue + "' and c.categoryid='" + ddlcategory.SelectedValue + "'", ListView1);
        }

    }
}