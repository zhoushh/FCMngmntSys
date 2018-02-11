using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCMngmntSys.pages.admin
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_add_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }

        protected void Button_BackToChoiceForAcc_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_select.html");
        }
    }
}