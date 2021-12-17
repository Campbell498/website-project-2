using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class webform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void btnPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("print.aspx?Quantity1=" + txtQuantity1.Text 
            +"&Price1=" + txtUnitPrice1.Text
            + "&FullName=" + txtFullName.Text + "&Item1=" + txtItem1.Text
            +"&Price2=" + txtUnitPrice2.Text + "&Quantity2=" + txtQuantity2.Text   /* Code executed on button click to redirect user input to print page */
            + "&Quantity3=" + txtQuantity3.Text + "&Price3=" + txtUnitPrice3.Text
            + "&Item2=" + txtItem2.Text + "&Item3=" + txtItem3.Text
             + "&Total1=" + txtSubTotal1.Text + "&Total2=" + txtSubTotal2.Text
             + "&Total3=" + txtSubTotal3.Text + "&Total4=" + txtSummary.Text);
    }
    






    protected void btnCalculateSubTotal_Click(object sender, EventArgs e)
    {
        var UnitPrice1 = Decimal.Parse(txtUnitPrice1.Text);
        int Quantity1 = Int32.Parse(txtQuantity1.Text);
        decimal subTotal1 = Quantity1 * UnitPrice1;
        txtSubTotal1.Text = subTotal1 + Environment.NewLine;

        var UnitPrice2 = Decimal.Parse(txtUnitPrice2.Text);    /* code does all the calculations of user input */
        int Quantity2 = Int32.Parse(txtQuantity2.Text);
        decimal subTotal2 = Quantity2 * UnitPrice2;
        txtSubTotal2.Text = subTotal2 + Environment.NewLine;   /* decimal is used instead of int for validation purposes */

        var UnitPrice3 = Decimal.Parse(txtUnitPrice3.Text);
        int Quantity3 = Int32.Parse(txtQuantity3.Text);
        decimal subTotal3 = Quantity3 * UnitPrice3;
        txtSubTotal3.Text = subTotal3 + Environment.NewLine;

        decimal Total = subTotal1 + subTotal2 + subTotal3;
        txtSummary.Text = Total + Environment.NewLine;

    }
    private double calculateTotal1(int Quantity1, int UnitPrice1)
    {
        double subTotal1 = 0.0;


        subTotal1 = UnitPrice1 * Quantity1;
        return subTotal1;


    }
    private double calculateTotal2(int Quantity2, int UnitPrice2)
    {
        double subTotal2 = 0.0;


        subTotal2 = UnitPrice2 * Quantity2;
        return subTotal2;


    }
    private double calculateTotal3(int Quantity3, int UnitPrice3)
    {
        double subTotal3 = 0.0;


        subTotal3 = UnitPrice3 * Quantity3;
        return subTotal3;


    }
}
