using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class YearwiseReport : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 2000; i <= DateTime.Now.Year; i++)
            {
                ddlyear.Items.Add(i.ToString());
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("SELECT b.fromacc,b.toacc, b.payeddate,b.amount, b.status from tblbank b WHERE YEAR(b.payeddate) = '" + ddlyear.SelectedValue + "' GROUP BY b.fromacc,b.toacc, b.payeddate,b.amount, b.status");
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                //divgrid.Visible = true;
                Double TotalAmount = 0;
                foreach (DataRow dr in dt.Rows)
                {

                    TotalAmount = TotalAmount + Convert.ToDouble(dr["amount"].ToString());
                }
                //Quantity = Quantity;
                Label1.Text = "Total Amount As : Rupees" + TotalAmount;
            }
            else
            {
                GridView1.Visible = false;
                Label1.Text = "Not found";

            }
        }

    }
}
