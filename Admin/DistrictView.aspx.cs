using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class DistrictView : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillgrid("select * from tbldistrict", GridView1);
                db.fillgrid("select * from tbllocation", GridView1);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
         
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;
            
                foreach(GridViewRow dr in GridView1.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {
                    db.exenonquery("delete from tbldistrict where districtid=" + chk.Value + "");
                }
            }
            db.fillgrid("select * from tbldistrict", GridView1);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tbldistrict", GridView1);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tbldistrict", GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox txtdistrict = new TextBox();
            txtdistrict = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            int i = db.exenonquery("update tbldistrict set districtname='" + txtdistrict.Text);
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbldistrict", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tbldistrict", GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tbldistrict where districtid=" + id + "");
        }
    }
}