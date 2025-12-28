using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class LocationReg : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                db.fillddl("select * from tbldistrict", ddllocation, "districtname", "districtid");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(locationname) from tbllocation where locationname='" + txtlocationname.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {
                string s= "insert into tbllocation values ('" + ddllocation.SelectedValue + "','" + txtlocationname.Text + "')";
                int i = db.exenonquery(s);
                if (i == 1)
                {
                    Response.Write("<script>alert('location Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('location Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
          
        }

      

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LocationView.aspx");
        }
    }
}
