using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class MonthwiseReport : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 2023; i <= 2030; i++)
                {
                    ddlyear.Items.Add(i.ToString());
                }

                for (int i = 1; i <= 12; i++)
                {
                    ddlmonth.Items.Add(i.ToString());
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("SELECT b.fromacc,b.toacc, b.payeddate,b.amount, b.status from tblbank b WHERE MONTH(b.payeddate) = '" + ddlmonth.SelectedValue + "' and YEAR(b.payeddate) = '" + ddlyear.SelectedValue + "' GROUP BY b.fromacc,b.toacc, b.payeddate,b.amount, b.status");

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                //divgrid.Visible = true;

            }


        }
    }
}