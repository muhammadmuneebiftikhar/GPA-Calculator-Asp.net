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
    public partial class ProductAdmin : System.Web.UI.Page
    {
        product p = new product();
        productBLL BLL = new productBLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                gridProducts();
        }

        protected void btnInsertProduct_Click(object sender, EventArgs e)
        {
            p.Name = txtName.Text;
            p.Image = (txtImage.Text + ".jpg");
            string location = @"C:\Users\Muneeb\source\repos\GPA Calculator\GPA Calculator\Images\";
            string path = System.IO.Path.Combine(location, p.Image);
            p.Price = Convert.ToInt32(txtPrice.Text);
            p.Description = txtDes.Text;
            FileUpload1.SaveAs(path);
            if (BLL.InsertProductBLL(p))
            {
                Response.Write("<script>alert('Added')</script>");
                gridProducts();
                txtName.Text = "";
                txtImage.Text = "";
                txtPrice.Text = "";
                txtDes.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
        private void gridProducts()
        {

            DataTable dt = BLL.GetAllProductsBLL();
            if (dt != null)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddToCart.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            p.Name = txtName.Text;
            if(BLL.DeleteProductsBLL(p))
            {
                Response.Write("<script>alert('Deleted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Deleted')</script>");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            p.Name = txtName.Text;
            DataTable dt = BLL.GETProductsBLL(p);
            if(dt != null)
            {
                txtImage.Text = dt.Rows[0]["Image"].ToString();
                txtPrice.Text = dt.Rows[0]["Price"].ToString();
                txtDes.Text = dt.Rows[0]["Description"].ToString();
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }
    }
}