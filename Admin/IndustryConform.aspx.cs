using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class IndustryConform : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select d.districtname,i.*,l.* from tblindustry i inner join tbldistrict d on d.districtid=i.districtid inner join " +
                    "tbllogin l on i.loginid=l.loginid where l.status='Not Confirmed'", GridView1);
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Confirm")
            {


                //Determine the RowIndex of the Row whose Button was clicked.
                int lid = Convert.ToInt32(e.CommandArgument);
                db.exenonquery("update tbllogin set status='Confirmed' where loginid=" + lid + " ");
                db.fillgrid("select d.districtname,i.*,l.* from tblindustry i inner join tbldistrict d on d.districtid=i.districtid inner join " +
                    "tbllogin l on i.loginid=l.loginid where l.status='Not Confirmed'", GridView1);

            }
            if (e.CommandName == "Reject")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int lid = Convert.ToInt32(e.CommandArgument);
                db.exenonquery("update tbllogin set status='Rejected' where loginid=" + lid + " ");
                db.fillgrid("select d.districtname,i.*,l.* from tblindustry i inner join tbldistrict d on d.districtid=i.districtid inner join " +
                    "tbllogin l on i.loginid=l.loginid where l.status='Not Confirmed'", GridView1);

            }

        }
    }
}