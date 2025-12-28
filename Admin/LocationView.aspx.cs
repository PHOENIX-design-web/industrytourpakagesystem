using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class LocationView : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillddl("select * from tbldistrict", ddldistrict2, "districtname", "districtid");
                // db.fillgrid("select * from tbllocation", GridView2);
                Panel1.Visible = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
            
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
            TextBox textlocation = new TextBox();


            textlocation = (TextBox)GridView2.Rows[e.RowIndex].Cells[2].Controls[0];

            int dis = Convert.ToInt32(((DropDownList)GridView2.Rows[e.RowIndex].FindControl("ddldistrict1")).SelectedValue);
            int i = db.exenonquery("update tbllocation set districtid='" + dis + "',locationname='" + textlocation.Text + "' where locationid=" + id + "");
            GridView2.EditIndex = -1;
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView2.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete  from  tbllocation where locationid=" + id + "");
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList DropDownddl = (e.Row.FindControl("ddldistrict1") as DropDownList);
                db.fillddl("select * from tbldistrict", DropDownddl, "districtname", "districtid");
                ((DropDownList)e.Row.FindControl("ddldistrict1")).SelectedValue = DataBinder.Eval(e.Row.DataItem, "districtid").ToString();
            }
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;

            foreach (GridViewRow dr in GridView2.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {
                    db.exenonquery("delete from tbllocation where districtid=" + chk.Value + "");
                }
            }
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
        }

        protected void ddldistrict2_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillgrid("select * from tbllocation where districtid=" + ddldistrict2.SelectedValue + "", GridView2);
            Panel1.Visible = true;

        }
    }
    }



