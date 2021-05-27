using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using BusinessLogicLayer;

namespace GPA_Calculator
{
    public partial class FormulaTable : System.Web.UI.Page
    {
        studentBLL sBLL = new studentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gridFormula();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void gridFormula()
        {
            DataTable dt = sBLL.FormulaTable();
            if (dt != null)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Error!');</script>");
            }
        }
    }
}