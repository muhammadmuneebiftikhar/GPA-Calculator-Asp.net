using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using BusinessLogicLayer;
using System.Data;

namespace GPA_Calculator
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                productBLL pBLL = new productBLL();
                DataTable dt = pBLL.GetAllProductsBLL();
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
        protected void btnAddtoCart_Command(Object sender, CommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                int id = Int16.Parse(e.CommandArgument.ToString());
                product p = new product();
                p.Id = id;
                productBLL pBLL = new productBLL();
                DataTable dt = pBLL.SearchProductsBLL(p);
                p.Name = dt.Rows[0]["Name"].ToString();
                p.Image = dt.Rows[0]["Image"].ToString();
                p.Price = float.Parse(dt.Rows[0]["Price"].ToString());
                p.Description = dt.Rows[0]["Description"].ToString();
                cart cart = null;
                if (Session["cart"] != null)
                {
                    cart = (cart)Session["cart"];
                }
                cart newCart = new cart(cart);
                if (newCart.AddToCart(p, 1))
                {
                    Session["cart"] = newCart;
                    Response.Redirect(Request.RawUrl);
                }
                else
                {
                    Response.Write(@"<script language= 'javascript'>alert('item not added to cart');</srcipt>");
                }
            }
        }
    }
}