using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using DataAccessLayer;
using System.Data;

namespace BusinessLogicLayer
{
    public class productBLL
    {
        productDAL pDAL = new productDAL();

        public DataTable GetAllProductsBLL()
        {
            return pDAL.GellAllProductsDAL();
        }
        public DataTable SearchProductsBLL(product p)
        {
            return pDAL.SearchProductsDAL(p);
        }
        public DataTable GETProductsBLL(product p)
        {
            return pDAL.GETProductsDAL(p);
        }
        public bool DeleteProductsBLL(product p)
        {
            return pDAL.DeleteProductsDAL(p);
        }
        public bool InsertProductBLL(product p)
        {
            return pDAL.insertProduct(p);
        }
    }
}
