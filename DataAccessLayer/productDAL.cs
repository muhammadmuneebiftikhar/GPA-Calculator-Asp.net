using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using System.Data;

namespace DataAccessLayer
{
    public class productDAL
    {
        DbCon db = new DbCon();
        public DataTable GellAllProductsDAL()
        {
            string qry = "Select * from Products";
            return db.Search(qry);
        }
        public DataTable SearchProductsDAL(product p)
        {
            string qry = $"Select * from Products where Id ={p.Id}";
            return db.Search(qry);
        }
    }
}
