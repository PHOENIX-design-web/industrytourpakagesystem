using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class ViewPayment : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                db.fillgrid("select c.*,r.* from tblrequest r inner join tblcustomer c on r.customerid = c.customerid where r.status='PAID'", GridView1);

            }
        }
    }
}