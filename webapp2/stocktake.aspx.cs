using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class stocktake : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        int ItemLevel = Int32.Parse(txtLevel.Text);
        int Quantity1 = Int32.Parse(txtQuantity1.Text);  /* calculations performed when user clicks calculate */
        int Quantity2 = Int32.Parse(txtQuantity2.Text);  
        int Quantity3 = Int32.Parse(txtQuantity3.Text);
        int difference1 = Math.Max(ItemLevel - Quantity1, 0);
        if (difference1 < 0)
        {
            difference1 = -difference1;
        }
        txtReorderQuantity1.Text = difference1.ToString();

        int difference2 = Math.Max(ItemLevel - Quantity2, 0);
        if (difference2 < 0)
        {
            difference2 = -difference2;
        }
        txtReorderQuantity2.Text = difference2.ToString();

        int difference3 = Math.Max(ItemLevel - Quantity3, 0);
        if (difference3 < 0)
        {
            difference3 = -difference3;
        }
        txtReorderQuantity3.Text = difference3.ToString();


        int ReorderQuantity1 = Int32.Parse(txtReorderQuantity1.Text);
        var UnitPrice1 = Decimal.Parse(txtUnitPrice1.Text);
        decimal subTotal1 = ReorderQuantity1 * UnitPrice1;
        txtSubTotal1.Text = subTotal1 + Environment.NewLine;


        int ReorderQuantity2 = Int32.Parse(txtReorderQuantity2.Text);
        var UnitPrice2 = Decimal.Parse(txtUnitPrice2.Text);
        decimal subTotal2 = ReorderQuantity2 * UnitPrice2;
        txtSubTotal2.Text = subTotal2 + Environment.NewLine;

        int ReorderQuantity3 = Int32.Parse(txtReorderQuantity3.Text);
        var UnitPrice3 = Decimal.Parse(txtUnitPrice3.Text);
        decimal subTotal3 = ReorderQuantity3 * UnitPrice3;
        txtSubTotal3.Text = subTotal3 + Environment.NewLine;





    }

    protected void btnPlus_Click(object sender, EventArgs e)  /* calculations performed when user clicks Plus Button as well as change reorder quantity */
    {
        {
            int i = Int32.Parse(txtLevel.Text);
            i++;
            txtLevel.Text = i.ToString();
        }
        int ItemLevel = Int32.Parse(txtLevel.Text);
        int Quantity1 = Int32.Parse(txtQuantity1.Text);
        int Quantity2 = Int32.Parse(txtQuantity2.Text);
        int Quantity3 = Int32.Parse(txtQuantity3.Text);
        int difference1 = Math.Max(ItemLevel - Quantity1, 0);
        if (difference1 < 0)
        {
            difference1 = -difference1;
        }
        txtReorderQuantity1.Text = difference1.ToString();

        int difference2 = Math.Max(ItemLevel - Quantity2, 0);
        if (difference2 < 0)
        {
            difference2 = -difference2;
        }
        txtReorderQuantity2.Text = difference2.ToString();

        int difference3 = Math.Max(ItemLevel - Quantity3, 0);
        if (difference3 < 0)
        {
            difference3 = -difference3;
        }
        txtReorderQuantity3.Text = difference3.ToString();

        int ReorderQuantity1 = Int32.Parse(txtReorderQuantity1.Text);
        var UnitPrice1 = Decimal.Parse(txtUnitPrice1.Text);
        decimal subTotal1 = ReorderQuantity1 * UnitPrice1;
        txtSubTotal1.Text = subTotal1 + Environment.NewLine;


        int ReorderQuantity2 = Int32.Parse(txtReorderQuantity2.Text);
        var UnitPrice2 = Decimal.Parse(txtUnitPrice2.Text);
        decimal subTotal2 = ReorderQuantity2 * UnitPrice2;
        txtSubTotal2.Text = subTotal2 + Environment.NewLine;

        int ReorderQuantity3 = Int32.Parse(txtReorderQuantity3.Text);
        var UnitPrice3 = Decimal.Parse(txtUnitPrice3.Text);
        decimal subTotal3 = ReorderQuantity3 * UnitPrice3;
        txtSubTotal3.Text = subTotal3 + Environment.NewLine;


    }

    protected void btnMinus_Click(object sender, EventArgs e)   /* calculations performed when user clicks minus Button as well as change reorder quantity */
    {
        {


            int i = Int32.Parse(txtLevel.Text);
            i--;
            txtLevel.Text = i.ToString();
        }
        int ItemLevel = Int32.Parse(txtLevel.Text);
        int Quantity1 = Int32.Parse(txtQuantity1.Text);
        int Quantity2 = Int32.Parse(txtQuantity2.Text);
        int Quantity3 = Int32.Parse(txtQuantity3.Text);
        int difference1 = Math.Max(ItemLevel - Quantity1, 0);
        if (difference1 < 0)
        {
            difference1 = -difference1;
        }
        txtReorderQuantity1.Text = difference1.ToString();

        int difference2 = Math.Max(ItemLevel - Quantity2, 0);
        if (difference2 < 0)
        {
            difference2 = -difference2;
        }
        txtReorderQuantity2.Text = difference2.ToString();

        int difference3 = Math.Max(ItemLevel - Quantity3, 0);
        if (difference3 < 0)
        {
            difference3 = -difference3;
        }
        txtReorderQuantity3.Text = difference3.ToString();

        int ReorderQuantity1 = Int32.Parse(txtReorderQuantity1.Text);
        var UnitPrice1 = Decimal.Parse(txtUnitPrice1.Text);
        decimal subTotal1 = ReorderQuantity1 * UnitPrice1;
        txtSubTotal1.Text = subTotal1 + Environment.NewLine;


        int ReorderQuantity2 = Int32.Parse(txtReorderQuantity2.Text);
        var UnitPrice2 = Decimal.Parse(txtUnitPrice2.Text);
        decimal subTotal2 = ReorderQuantity2 * UnitPrice2;
        txtSubTotal2.Text = subTotal2 + Environment.NewLine;

        int ReorderQuantity3 = Int32.Parse(txtReorderQuantity3.Text);
        var UnitPrice3 = Decimal.Parse(txtUnitPrice3.Text);
        decimal subTotal3 = ReorderQuantity3 * UnitPrice3;
        txtSubTotal3.Text = subTotal3 + Environment.NewLine;



    }  
}