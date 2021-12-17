using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class print : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string FullName = Request.QueryString["FullName"];  /* Code to pull data from invoice page */
        string Price1 = Request.QueryString["Price1"];
        string Price2 = Request.QueryString["Price2"];
        string Price3 = Request.QueryString["Price3"];
        string Quantity1 = Request.QueryString["Quantity1"];
        string Quantity2 = Request.QueryString["Quantity2"];
        string Quantity3 = Request.QueryString["Quantity3"];
        string Item1 = Request.QueryString["Item1"];
        string Item2 = Request.QueryString["Item2"];
        string Item3 = Request.QueryString["Item3"];
        string Total1 = Request.QueryString["Total1"];
        string Total2 = Request.QueryString["Total2"];
        string Total3 = Request.QueryString["Total3"];
        string Total4 = Request.QueryString["Total4"];


        txtFullName.Text = FullName;  
        txtUnitPrice1.Text = Price1;  /* code to put the data into the textboxes */
        txtUnitPrice2.Text = Price2;
        txtUnitPrice3.Text = Price3;
        txtQuantity1.Text = Quantity1;
        txtQuantity2.Text = Quantity2;
        txtQuantity3.Text = Quantity3;
        txtItem1.Text = Item1;
        txtItem2.Text = Item2;
        txtItem3.Text = Item3;
        txtSubTotal1.Text = Total1;
        txtSubTotal2.Text = Total2;
        txtSubTotal3.Text = Total3;
        txtSummary.Text = Total4;  /* txtSummary is sum of all totals */




















    }
   
}
    
