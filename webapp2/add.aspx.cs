using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Serialization;
using System.IO;
using System.Xml;
using System.Data;
using System.Xml.Linq;

public partial class add : System.Web.UI.Page
{




    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnUpdateFile_Click(object sender, EventArgs e)
    {
        /* The code behind will be executed on button click */
        XDocument document = XDocument.Load(Server.MapPath("XMLFile.xml"));  /* code loads the XML file*/
        document.Element("PurchaseCollection").Add(new XElement
        ("Purchase", new XElement("id", txtID.Text),
        new XElement("fullName", txtFullName.Text),
        new XElement("emailAddress", txtEmailAddress.Text),
        new XElement("productname", txtProductName.Text),  
        new XElement("unitprice", txtUnitPrice.Text),  /* new elements added to xml file via text input */
        new XElement("quantity", txtQuantity.Text)));
        document.Save(Server.MapPath("~/XMLFile.xml")); 
        txtID.Text = string.Empty;  
        txtFullName.Text = string.Empty;
        txtEmailAddress.Text = string.Empty;
        txtProductName.Text = string.Empty;
        txtUnitPrice.Text = string.Empty; 
        txtQuantity.Text = string.Empty;

    }
}















