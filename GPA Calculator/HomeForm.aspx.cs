using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GPA_Calculator
{
    public partial class HomeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rollno"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                txtRollno.Text = Session["rollno"].ToString();
            }
        }

        protected void FormulaTable_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormulaTable.aspx");
        }

        protected void btnSgpaByMarks_Click(object sender, EventArgs e)
        {
            Response.Redirect("sgpaByMarks.aspx");
        }

        protected void btnSgpaByGrades_Click(object sender, EventArgs e)
        {
            Response.Redirect("sgpaByGrades.aspx");
        }

        protected void btnCgpa_Click(object sender, EventArgs e)
        {
            Response.Redirect("CGPAForm.aspx");
        }

        protected void btnLogot_Click(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void btnDocuments_Click(object sender, EventArgs e)
        {
            Response.Redirect("GpaCalculator.Master");
        }
    }
}