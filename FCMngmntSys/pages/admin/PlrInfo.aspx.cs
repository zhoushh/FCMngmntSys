using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCMngmntSys.pages.admin
{
    public partial class PlrInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_BackToChoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_select.html");
        }

        protected void LinkButton_search_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPlr.aspx");
        }
    }
}