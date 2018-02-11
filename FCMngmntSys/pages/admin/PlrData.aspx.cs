using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCMngmntSys.pages.admin
{
    public partial class PlrData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlCmd = "SELECT * FROM PlrData";
            SqlConnection conn = new SqlConnection(Common.connStr);
            conn.Open();
        }

        protected void Button_SearchPlr_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPlr.aspx");
        }

        protected void Button_backToChoose_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_select.html");
        }
    }
}