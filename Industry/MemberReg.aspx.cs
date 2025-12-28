using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class MemberReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //db.fillddl("select * from tbllocation", ddllocation, "locationname", "locationid");
                db.fillddl("select * from tbldistrict", ddldistrict, "districtname", "districtid");

            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime aDate = DateTime.Now;

            object ob = db.exescalar("select count(email) from tblmember where email='" + txtemail.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {

                string sql = "insert into tblmember values('" + txtname.Text + "','" + file2.FileName + "','" + aDate.ToString("MM/dd/yyyy") + "','" + txtemail.Text + "','" + txtno.Text + "'," + ddldistrict.SelectedValue + "," + ddllocation.SelectedValue + ",'" + txthouse.Text + "','" + Session["loginid"] + "','" + file1.FileName + "')";
                file1.SaveAs(Server.MapPath("~/upload/" + file1.FileName));
                db.dbclose();
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('Member Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Member Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate Email exist!')</script>");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void ddldistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            db.fillddl("select * from tbllocation where districtid='" + ddldistrict.SelectedValue + "'", ddllocation, "locationname", "locationid");

        }
    }
}