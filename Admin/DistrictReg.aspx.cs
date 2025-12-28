using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class DistrictReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(districtname) from tbldistrict where districtname='" + txtdistrictname.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {

                string sql = "insert into tbldistrict values('" + txtdistrictname.Text + "')";
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('District Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('District Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
            txtdistrictname.Text = "";
            //Response.Redirect("viewdistrict.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DistrictView.aspx");
        }



        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("DistrictView.aspx");
        //}
    }
}