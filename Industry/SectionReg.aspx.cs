using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class SectionReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(sectiontime) from tblsection where sectiontime='" + txttime.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {

                string sql = "insert into tblsection values('" + txttype.Text + "','" + txttime.Text + "','" + txtamount.Text + "','" + Session["loginid"] + "')";
               
                db.dbclose();
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('section Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('section Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate time exist!')</script>");
            }

        }
    

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}