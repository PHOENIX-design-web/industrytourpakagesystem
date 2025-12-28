using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class CategoryView : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)

        {

            if (!IsPostBack)
            {

                db.fillgrid("select * from tblcategory", GridView2);

            }

        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            db.fillgrid("select * from tblcategory", GridView2);
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView2.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tblcategory", GridView2);
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
            TextBox txtcategory = new TextBox();
            txtcategory = (TextBox)GridView2.Rows[e.RowIndex].Cells[2].Controls[0];
            int i = db.exenonquery("update tblcategory set categoryname='" + txtcategory.Text + "' where categoryid='" + id + "'");
            GridView2.EditIndex = -1;
            db.fillgrid("select * from tblcategory", GridView2);
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tblcategory where categoryid=" + id + "");
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tblcategory", GridView2);
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;

            foreach (GridViewRow dr in GridView2.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {
                    db.exenonquery("delete from tblcategory where categoryid=" + chk.Value + "");
                }
            }
            db.fillgrid("select * from tblcategory", GridView2);
        }

    }
}