using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class RequestPie : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
              db.fillgrid("select count(*) as count, i.industryname FROM tblrequest r INNER JOIN tblindustry i ON r.industryid = i.industryid GROUP BY i.industryname", GridView1);

            DataTable objdatatable = db.exedatatable("select count(*) as count, i.industryname FROM tblrequest r INNER JOIN tblindustry i ON r.industryid = i.industryid GROUP BY i.industryname");
            string[] x = new string[objdatatable.Rows.Count];

            int[] y = new int[objdatatable.Rows.Count];
            for (int i = 0; i < objdatatable.Rows.Count; i++)
            {
                x[i] = objdatatable.Rows[i]["industryname"].ToString();
                y[i] = Convert.ToInt32(objdatatable.Rows[i]["count"]);
            }
            // Chart1
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].Label = "#PERCENT";
            Chart1.Series[0].LegendText = "#AXISLABEL";

        }
    }
}