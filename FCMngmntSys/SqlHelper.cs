using System;
using System.Data;
using System.Xml;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;

namespace FCMngmntSys
{
    /// <summary> 
    /// SqlServer数据访问帮助类 
    /// </summary> 
    public sealed class SqlHelper
    {
        #region 私有构造函数和方法

        private SqlHelper() { }

        public static int ExecuteNonQuery(string connectionString, CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            if (connectionString == null || connectionString.Length == 0) throw new ArgumentNullException("connectionString");

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                return ExecuteNonQuery(connection, commandType, commandText, commandParameters);
            }
        }

        private static int ExecuteNonQuery(SqlConnection connection, CommandType commandType, string commandText, SqlParameter[] commandParameters)
        {
            throw new NotImplementedException();
        }

        #endregion

        /// <summary> 
        /// 一个有效的数据库连接字符串 
        /// </summary> 
        /// <returns></returns> 
        public static string GetConnString()
        {
            return ConfigurationManager.ConnectionStrings[Common.connStr].ConnectionString;
        }
    }
}       

//如果要获取连接数据连接对象或字符串的话，先要修改SQLHelper类中GetConnSting() 方法中的ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;才能调用。