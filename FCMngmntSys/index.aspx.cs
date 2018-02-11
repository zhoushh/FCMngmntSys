using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FCMngmntSys
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button_login_Click(object sender, EventArgs e)
        {
            /*******基本验证*******/
            if (workNum.Text == "")
                Response.Write("<script>alert('用户名不能为空！');</script>");
            else if (password.Text == "")
                Response.Write("<script>alert('密码不能为空！');</script>");
            else if (RadioButtonList_chooseType.SelectedItem == null)
                Response.Write("<script>alert('请选择一个用户类型！');</script>");

            /*******通过基本验证后接收输入的数据、设置SQL语句*******/
            else
            {
                string getID = workNum.Text;
                string getPwd = password.Text;
                string getType = RadioButtonList_chooseType.SelectedValue;
                string sqlCmd = "SELECT * FROM Account WHERE AccID=@AccID";
                string checkPwd = "", checkType = "";
                SqlParameter[] param =
                {
                new SqlParameter("@AccID", getID),
                new SqlParameter("@AccPwd", getPwd),
                new SqlParameter("@AccType", getType)
                };

                /*******连接数据库的操作*******/
                SqlConnection conn = new SqlConnection(Common.connStr);
                conn.Open();
                SqlCommand cmd = new SqlCommand(sqlCmd);
                cmd.CommandText = sqlCmd;
                cmd.Connection = conn;
                cmd.Parameters.AddRange(param);
                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();
                sdr.Read();
                /***try-catch-finally结构确认账号、密码、类型匹配***/
                int i = 0;//用于判断登录错误类型的计数器
                try
                {
                    checkPwd = sdr["AccPwd"].ToString();
                    checkType = sdr["AccType"].ToString();
                }
                catch
                {
                    Response.Write("<script>alert('用户不存在！');</script>");
                    i++;
                }
                finally
                {
                    if (checkPwd == getPwd && checkType == getType)
                        Response.Redirect("/pages/admin/admin_select.html");
                    else if (i == 0)
                        Response.Write("<script>alert('登录失败！密码或用户类型不正确！');</script>");
                }
                conn.Dispose();
            }
        }
    }
}