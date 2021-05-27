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
    public partial class CGPA : System.Web.UI.Page
    {
        student S = new student();
        studentBLL sBLL = new studentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
               gridSgpa();

            if (Session["rollno"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                txtRollNo.Text = Session["rollno"].ToString();
            }
        }

        protected void btnSgpaAdd_Click(object sender, EventArgs e)
        {
            S.Rollno =Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            S.Sgpa = float.Parse(txtSgpa.Text);
            if (sBLL.insertSgpaBll(S))
            {
                Response.Write("<script>alert('Sgpa Inserted.')</script>");
                gridSgpa();
            }
            else
            {
                Response.Write("<script>alert('Error in Insertion Try Later.')</script>");
            }
        }

        private void gridSgpa()
        {
            if (Session["rollno"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                S.Rollno = Convert.ToInt32(Session["rollno"].ToString());
            }
            DataTable dt = sBLL.sgpaStudentBll(S);
            if (dt != null)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnCal_Cgpa_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            DataTable dt = sBLL.calcCGPABll(S);
            if (dt != null)
            {
                txtCGPA.Text = dt.Rows[0][0].ToString();
                gridSgpa();
            }
            else
            {
                Response.Write("<script>alert('Error in Calculation');</script>");
            }
        }

        protected void btnSgpaDelete_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            if (sBLL.sgpaDeleteDLL(S))
            {
                Response.Write("<script>alert('Sgpa Deleted.')</script>");
                gridSgpa();
            }
            else
            {
                Response.Write("<script>alert('Error in Deleting Try Later.')</script>");
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeForm.aspx");
        }
    }
}