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
    public partial class sgpaByMarks : System.Web.UI.Page
    {
        student S = new student();
        studentBLL sBLL = new studentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
                this.gridSgpaMarks();
            if(Session["rollno"]==null)
                {
                    Response.Redirect("LoginForm.aspx");
                }
                else
                {
                    txtRollNo.Text = Session["rollno"].ToString();
                    gridSgpaMarks();
                }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            S.Subject = txtSubject.Text;
            S.Cr = Convert.ToInt32(txtCR.Text);
            S.Marks = Convert.ToInt32(txtMarks.Text);
            if(S.Marks > 89)
            {
                S.Point = 4;
            }
            else if(S.Marks > 79 && S.Marks < 89)
            {
                S.Point = 4;
            }
            else if(S.Marks > 73 && S.Marks < 79)
            {
                S.Point = (float) 3.66;
            }
            else if (S.Marks > 69 && S.Marks < 73)
            {
                S.Point = (float) 3.00;
            }
            else if (S.Marks > 66 && S.Marks < 69)
            {
                S.Point = (float) 2.66;
            }
            else if (S.Marks > 63 && S.Marks < 66)
            {
                S.Point = (float) 2.33;
            }
            else if (S.Marks > 59 && S.Marks < 63)
            {
                S.Point = (float) 2.00;
            }
            else if (S.Marks > 49 && S.Marks < 59)
            {
                S.Point = (float)1.5;
            }
            else
            {
                S.Point = (float)0.0;
            }
            if (sBLL.insertByMarks(S))
            {
                Response.Write("<script>alert('Inserted.')</script>");
                txtSemester.Text = "";
                txtSubject.Text = "";
                txtCR.Text = "";
                txtMarks.Text = "";
                gridSgpaMarks();
            }
            else
            {
                Response.Write("<script>alert('Error in Insertion Try Later.')</script>");
            }
        }

        private void gridSgpaMarks()
        {
            if (Session["rollno"] == null)
            {
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                S.Rollno = Convert.ToInt32(Session["rollno"].ToString());
            }
            DataTable dt = sBLL.ByMarksStudentBLL(S);
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

        protected void btnCal_SGPA_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            DataTable dt = sBLL.calCRByMarks(S);
            if (dt != null)
            {
                textCR.Text = dt.Rows[0][0].ToString();
            }
            DataTable dts = sBLL.calPointByMarks(S);
            if (dt != null)
            {
                txtPoints.Text = dts.Rows[0][0].ToString();
            }
            float ans =float.Parse(txtPoints.Text) / float.Parse(textCR.Text);

            txtMarks_SGPA.Text = "SGPA ::'"+ ans +"'";
            Response.Write("<script>alert('"+ ans +"')</script>");
            gridSgpaMarks();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Semester = Convert.ToInt32(txtSemester.Text);
            S.Subject = txtSubject.Text;
            if (sBLL.deleteByMarks(S))
            {
                Response.Write("<script>alert('Subject Deleted.')</script>");
                gridSgpaMarks();
            }
            else
            {
                Response.Write("<script>alert('Error in Deleting Try Later.')</script>");
            }
        }

        protected void btnLogot_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginForm.aspx");
        }
    }
}