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
    public partial class sgpaByGrades : System.Web.UI.Page
    {
        student S = new student();
        studentBLL sBLL = new studentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                gridByGrades();

            if (Session["rollno"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                txtRollNo.Text = Session["rollno"].ToString();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            S.Subject = txtSubject.Text;
            S.Cr = Convert.ToInt32(txtCR.Text);
            S.Grade = txtgrade.Text;
            if (S.Grade != null)
            {
                switch (S.Grade)
                {
                    case "A1":
                    case "A2":
                        S.Point = (float)4.0;
                        break;
                    case "A3":
                        S.Point = (float)3.66;
                        break;
                    case "B1":
                        S.Point = (float)3.33;
                        break;
                    case "B2":
                        S.Point = (float)3.00;
                        break;
                    case "B3":
                        S.Point = (float)2.66;
                        break;
                    case "C1":
                        S.Point = (float)2.33;
                        break;
                    case "C2":
                        S.Point = (float)2.00;
                        break;
                    case "D":
                        S.Point = (float)1.50;
                        break;
                    case "F":
                        S.Point = (float)0.00;
                        break;
                    default:
                        break;
                }
            }
            if (sBLL.insertByGrades(S))
            {
                Response.Write("<script>alert('Inserted.')</script>");
                txtSemester.Text = "";
                txtSubject.Text = "";
                txtCR.Text = "";
                txtgrade.Text = "";
                gridByGrades();
            }
            else
            {
                Response.Write("<script>alert('Error in Insertion Try Later.')</script>");
            }
        }
        private void gridByGrades()
        {
            if (Session["rollno"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                S.Rollno =Convert.ToInt32(Session["rollno"].ToString());
            }
            DataTable dt = sBLL.ByGradesStudentBLL(S);
            if (dt != null)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeForm.aspx");
        }

        protected void btnLogot_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("LoginForm.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            S.Subject = txtSubject.Text;
            if (sBLL.deleteByGrades(S))
            {
                Response.Write("<script>alert('Subject Deleted.')</script>");
                gridByGrades();
            }
            else
            {
                Response.Write("<script>alert('Error in Deleting Try Later.')</script>");
            }
        }

        protected void btnCal_SGPA_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            DataTable dt = sBLL.calCRByGrades(S);
            if (dt != null)
            {
                textCR.Text = dt.Rows[0][0].ToString();
            }
            DataTable dts = sBLL.calPointByGrades(S);
            if (dt != null)
            {
                txtPoints.Text = dts.Rows[0][0].ToString();
            }
            float ans = float.Parse(txtPoints.Text) / float.Parse(textCR.Text);

            txtMarks_SGPA.Text = "SGPA ::'" + ans + "'";
            Response.Write("<script>alert('" + ans + "')</script>");
            gridByGrades();
        }
    }
}