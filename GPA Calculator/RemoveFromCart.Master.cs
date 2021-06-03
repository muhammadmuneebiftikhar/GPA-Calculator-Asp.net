using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;

namespace GPA_Calculator
{
    public partial class RemoveFromCart : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["cart"] != null)
                {
                    cart cart = (cart)Session["cart"];
                    DataList1.DataSource = cart.items;
                    DataList1.DataBind();
                }
            }
        }
        protected void btnRemoveFromCart_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "removeFromCart")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                product p = new product();
                p.Id = id;
                cart cart = null;
                if (Session["cart"] != null)
                {
                    cart = (cart)Session["cart"];
                }
                cart newCart = new cart(cart);
                if (newCart.RemoveFromCart(p, -1))
                {
                    Session["cart"] = newCart;
                    Response.Redirect(Request.RawUrl);
                }
                else
                {
                    Response.Write(@"<script language='javascript'>alert('Item not removed from cart.')</script>");
                }
            }
        }
    }
}