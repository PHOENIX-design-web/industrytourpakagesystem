using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Customer
{
    public partial class ViewMore : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        public string filldate;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Iid = Request.QueryString["Iid"].ToString();
                Session["industryid"] = Iid;

                DataTable dt = db.exedatatable("select * from tbldate d inner join tblindustry  i on d.industryid=i.loginid where i.industryid='" + Session["industryid"] + "'");
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    DateTime fdate = Convert.ToDateTime(dt.Rows[i]["fromdate"]);
                    DateTime tdate = Convert.ToDateTime(dt.Rows[i]["todate"]);
                    string formattedFDate = fdate.ToShortDateString();
                    string formattedTDate = tdate.ToShortDateString();
                    string fillDate = formattedFDate + " - " + formattedTDate;
                    //filldate = dt.Rows[i]["fdate"].ToString() + "-" + dt.Rows[i]["tdate"].ToString();
                    DropDownList1.Items.Insert(i, new ListItem(fillDate, "dateid"));
                }




                db.fillddl("select * from tblsection" ,ddlsection, "sectiontype", "sectionid");
                db.filllistview("select i.*, d.*, c.* from tblindustry i inner join tbldistrict d on i.districtid = d.districtid  inner join tblcategory c on i.categoryid = c.categoryid where i.industryid=" + Session["industryid"] + "", ListView1);

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sql = "insert into tblrequest values( '" + Session["industryid"] + "','" + Session["loginid"] + "'," + ddlsection.SelectedValue + ",'" + DropDownList1.SelectedValue + "','not conformed','" + txtperson.Text + "','" + txtdes.Text + "')";

            db.dbclose();
            int i = db.exenonquery(sql);
            if (i == 1)
            {
                Response.Write("<script>alert('Request Sented sucessfully!!')</script>");
            }
            else
            {
                Response.Write("<script>alert('request Not Sent failed!')</script>");
            }
        }

        protected void txttime_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void ddlsection_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = db.exedatatable("select * from tblsection where sectionid='" + ddlsection.SelectedValue + "' ");
            txttime.Text = dt.Rows[0]["sectiontime"].ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sdate = DropDownList1.SelectedItem.Text;
            //string sdate = DropDownList1.SelectedItem.Text;
            string[] splitdate = sdate.Split('-');

        }
    }
}