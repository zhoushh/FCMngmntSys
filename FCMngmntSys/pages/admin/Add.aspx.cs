using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCMngmntSys.pages.admin
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormView_Add.DefaultMode = FormViewMode.Insert;
        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            Response.Write("<script>" + "alert('插入成功！')" + "</Script>");
        }

        protected void Button_BackToAccList_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
    }
}