using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Admin
{
    public partial class CategoryAdd : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void Button1_Click1(object sender, EventArgs e)
        {

            object ob = db.exescalar("select count(categoryname) from tblcategory where categoryname='" + txtcategory.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {
                string sql = "insert into tblcategory values ( '" + txtcategory.Text + "')";
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert(' Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert(' Insertion failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategoryView.aspx");
        }
    }

}
