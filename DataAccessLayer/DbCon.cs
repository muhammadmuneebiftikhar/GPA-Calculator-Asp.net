using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DbCon
    {
        private SqlConnection SqlCon;
        public DbCon()
        {
            SqlCon = new SqlConnection("Data Source=MUNEEB;Initial Catalog=GPA_Calculator;Integrated Security=True");
        }
        public bool UDI(string qry)
        {
            SqlCon.Open();
            SqlCommand cmd = new SqlCommand(qry, SqlCon);
            int res = cmd.ExecuteNonQuery();
            SqlCon.Close();
            if (res > 0)
            {
                return true;
            }
            return false;
        }
        public DataTable Search(string qry)
        {
            SqlCon.Open();
            SqlDataAdapter Sda = new SqlDataAdapter(qry, SqlCon);
            DataTable dt = new DataTable();
            Sda.Fill(dt);
            SqlCon.Close();
            if (dt.Rows.Count > 0)
            {
                return dt;
            }
            return null;
        }
    }
}
