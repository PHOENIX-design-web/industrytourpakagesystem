using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class IndustryviewReport : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select  d.*, l.*,c.*, i.* from tblindustry i inner join tbldistrict d on i.districtid = d.districtid inner join tblcategory c on i.categoryid = c.categoryid inner join tbllocation l on i.locationid = l.locationid", GridView1);
            }
        }
        public void CreateExcelFile(DataTable Excel)
        {
            Response.ClearContent();
            Response.AddHeader("content-disposition", string.Format("attachment; filename=SkinDetails.xls"));
            Response.ContentType = "application/vnd,ms-excel"; string space = "";
            foreach (DataColumn dcolumn in Excel.Columns)
            {
                Response.Write(space + dcolumn.ColumnName); space = "\t";
            }
            Response.Write("\n"); int countcolumn;
            foreach (DataRow dr in Excel.Rows)
            {
                space = "";
                for (countcolumn = 0; countcolumn < Excel.Columns.Count; countcolumn++)
                {
                    Response.Write(space + dr[countcolumn].ToString()); space = "\t";
                }
                Response.Write("\n");
            }
            Response.End();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("select  d.*, l.*,c.*, i.* from tblindustry i inner join tbldistrict d on i.districtid = d.districtid inner join tblcategory c on i.categoryid = c.categoryid inner join tbllocation l on i.locationid = l.locationid");

            CreateExcelFile(dt);

        }
    }
}