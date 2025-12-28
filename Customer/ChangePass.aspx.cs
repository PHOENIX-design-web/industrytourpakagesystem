using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace industrytourpakagesystem.Customer
{

    public partial class ChangePass : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnpwd_Click(object sender, EventArgs e)
        {
            int i = db.exenonquery("update tbllogin set password='" + txt_pwd.Text + "' where loginid='" + Session["loginid"] + "'");

            db.dbclose();
            if (i == 1)
            {
                    
                
                
                Response.Write("<script>alert('Password Change Success..!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Password Change Failed..!'</script>");
            }
        }

    }
}
