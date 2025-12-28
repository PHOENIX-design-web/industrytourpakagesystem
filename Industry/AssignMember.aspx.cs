using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Industry
{
    public partial class AssighnMember : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            { 
            db.fillddl("select * from tblmember", ddlassign, "membername", "memberid");
            db.filllistview("select * from tblcustomer", ListView1);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            

                string sql = "insert into tblassign values('" + Session["loginid"] + "'," + ddlassign.SelectedValue + ",'Confirmed')";
                
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
          

        

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}