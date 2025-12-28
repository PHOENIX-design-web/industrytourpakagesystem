using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class DistrictwisecustomerReport : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            db.fillgrid("select count(*) as count, d.districtname FROM tblcustomer c INNER JOIN tbldistrict d ON c.districtid = d.districtid GROUP BY d.districtname", GridView1);

            DataTable objdatatable = db.exedatatable("select count(*) as count, d.districtname FROM tblcustomer c INNER JOIN tbldistrict d ON c.districtid = d.districtid GROUP BY d.districtname");
            string[] x = new string[objdatatable.Rows.Count];

            int[] y = new int[objdatatable.Rows.Count];
            for (int i = 0; i < objdatatable.Rows.Count; i++)
            {
                x[i] = objdatatable.Rows[i]["districtname"].ToString();
                y[i] = Convert.ToInt32(objdatatable.Rows[i]["count"]);
            }
            // Chart1
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].Label = "#PERCENT";
            Chart1.Series[0].LegendText = "#AXISLABEL";

        }
    }
}