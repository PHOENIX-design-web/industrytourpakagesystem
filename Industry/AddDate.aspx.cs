using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class AddDate : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                string sql = "insert into tbldate values('" + txtfrom.Text + "','" + txtto.Text + "','" + Session["loginid"] + "')";

                db.dbclose();
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('Date Inserted sucessfully!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('section Insertion failed!')</script>");
                }
            }
           
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}