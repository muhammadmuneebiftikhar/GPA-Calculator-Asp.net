using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppProps
{
    public class cart
    {
        public List<myProduct> items = null;
        public int totalQty = 0;
        public float totalPrice = 0;

        public cart(cart OldCart)
        {
            if (OldCart != null)
            {
                items = OldCart.items;
                totalQty = OldCart.totalQty;
                totalPrice = OldCart.totalPrice;
            }
        }

        public bool RemoveFromCart(product product, int qty)
        {
            myProduct previousItem = items.FirstOrDefault(x => x.product.Id == product.Id);
            if (previousItem != null)
            {
                if (previousItem.quantity == qty || qty == -1)
                {
                    totalPrice -= (previousItem.quantity * previousItem.product.Price);
                    totalQty--;
                    items.Remove(previousItem);
                    return true;
                }
                else
                {
                    totalPrice = totalPrice - (previousItem.product.Price * qty);
                    previousItem.subTotal -= (previousItem.product.Price * qty);
                    previousItem.quantity -= qty;
                    return true;
                }
            }
            return false;
        }

        public bool AddToCart(product product, int qty)
        {
            if (items == null)
            {
                myProduct myProduct = new myProduct();
                myProduct.product = product;
                myProduct.quantity = qty;
                myProduct.subTotal = product.Price * qty;
                items = new List<myProduct>();
                items.Add(myProduct);
                totalQty++;
                totalPrice = myProduct.subTotal;
                return true;
            }
            else
            {
                myProduct previousItem = items.FirstOrDefault(x => x.product.Id == product.Id);
                if (previousItem != null)
                {
                    totalPrice = qty * previousItem.product.Price + totalPrice;
                    previousItem.quantity = previousItem.quantity + qty;
                    previousItem.subTotal = previousItem.subTotal + qty * previousItem.product.Price;
                    return true;
                }
                else
                {
                    myProduct myProduct = new myProduct();
                    myProduct.product = product;
                    myProduct.quantity = qty;
                    myProduct.subTotal = product.Price * qty;
                    items.Add(myProduct);
                    totalQty++;
                    totalPrice = myProduct.subTotal + totalPrice;
                    return true;
                }
            }
        }
    }
    public class myProduct
    {
        public product product;
        public int quantity;
        public float subTotal;
    }
}
