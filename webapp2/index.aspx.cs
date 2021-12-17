using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    { /* Code is executed on page load */
        ds.ReadXml(Server.MapPath("~/XMLFile.xml"));
        GridView1.DataSource = ds;
        GridView1.DataBind();  /* Binds XML data to the gridview control */

        XmlDocument ReadDoc = new XmlDocument();
        ReadDoc.Load(MapPath("~/XMLFile.xml"));
        int count = ReadDoc.SelectNodes("/PurchaseCollection/Purchase[quantity>10]").Count;
        lblOrders.Text = count.ToString("The amount of orders that excede a quantity of ten is " + count);  /* Code to count number of orders with quantitty greater than 10 */




    }

    

}