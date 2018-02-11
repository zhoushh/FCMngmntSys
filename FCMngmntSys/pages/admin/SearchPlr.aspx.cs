using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCMngmntSys.pages.admin
{
    public partial class SearchPlr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_searchByName_Click(object sender, EventArgs e)
        {
            string getName = TextBox_search.Text;
            string showID = "", showPBD = "", showPH = "", showPDIT = "";
            string sqlCmdInfo = "SELECT * FROM PlrInfo WHERE PlrName=@PlrName";

            SqlParameter[] param =
            {
                new SqlParameter("@PlrName",getName)
            };
            SqlConnection conn = new SqlConnection(Common.connStr);
            conn.Open();
            SqlCommand cmd = new SqlCommand(sqlCmdInfo);
            cmd.Connection = conn;
            cmd.Parameters.AddRange(param);

            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();

            try
            {
                showID = sdr["AccID"].ToString();
                showPBD = sdr["PlrBrthDate"].ToString();
                showPH = sdr["PlrHmtwn"].ToString();
                showPDIT = sdr["PlrDateInTeam"].ToString();
            }

            catch
            {
                Response.Write("<script>alert('该数据不存在！')</script>");
            }

            finally
            {
                Label_PID.Text = showID;
                Label_PN.Text = getName;
                Label_PBD.Text = showPBD;
                Label_PH.Text = showPH;
                Label_PDIT.Text = showPDIT;
            }
            conn.Dispose();
        }
    }
}