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
    public partial class WebForm1 : System.Web.UI.Page
    {
        student S = new student();
        studentBLL sBLL = new studentBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            S.Rollno = Convert.ToInt32(txtRollNo.Text);
            S.Password = txtPassword.Text;
            DataTable dt = sBLL.loginStudetBll(S);
            if (dt != null)
            {
                if(txtPassword.Text.Equals(dt.Rows[0]["password"].ToString()))
                {
                    Session["rollno"] = Convert.ToInt32(txtRollNo.Text);
                    Response.Redirect("HomeForm.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Not Registered');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RegisterForm register = new RegisterForm();

            Response.Redirect("RegisterForm.aspx");
        }
    }
}