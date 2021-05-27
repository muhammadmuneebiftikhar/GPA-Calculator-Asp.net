using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using BusinessLogicLayer;

namespace GPA_Calculator
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        studentBLL sBLL = new studentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            student S = new student();
            S.Name = txtName.Text;
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Password = txtPassword.Text;
            S.Degree = txtDegree.Text;
            if (sBLL.registerStudentBll(S))
            {
                Response.Write("<script>alert('You can Login Now.')</script>");
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                Response.Write("<script>alert('Error in Registeration Try Later.')</script>");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }
    }
}