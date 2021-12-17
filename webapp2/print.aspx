<%@ Page Language="C#" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Good Gums</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server" method="post" action="print.aspx">
        <fieldset class="ff">   <!-- User is taken to this page from the invoice page-->,
            
            <div class="container">
        <div>
            <asp:Label ID="lblFullName" runat="server" Text="Invoice For:" CssClass="labelWidth"></asp:Label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="textMargin"></asp:TextBox>
        </div>
             </div>
        
            <div class="container">
        <div>
            <asp:Label ID="lblItemName1" runat="server" Text="Item name:" CssClass="labelWidth"></asp:Label>
            <asp:TextBox ID="txtItem1" runat="server"  CssClass="textMargin" ReadOnly="True"></asp:TextBox> <!-- Textbox is readonly so user cannot change output -->
            <asp:Label ID="lblUnitPrice1" runat="server" Text="Unit Price:" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtUnitPrice1" runat="server" CssClass="textMargin" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="lblQuantity1" runat="server" Text="Quantity:" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtQuantity1" runat="server"  CssClass="textMargin" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="lblSubTotal1" runat="server" Text="Sub Total:" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtSubTotal1" runat="server"  CssClass="textMargin" ReadOnly="True"></asp:TextBox>

        </div>
             </div>
            <div class="container">
        <div >
            <asp:Label ID="lblItemName2" runat= "server" Text="Item name:" CssClass="labelWidth"></asp:Label>
            <asp:TextBox ID="txtItem2" runat="server" CssClass="textMargin" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="lblUnitPrice2" runat="server" Text="Unit Price:" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtUnitPrice2" runat="server" CssClass="textMargin" ReadOnly="True" ></asp:TextBox>
            <asp:Label ID="lblQuantity2" runat="server" Text="Quantity" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtQuantity2" runat="server"  CssClass="textMargin" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="lblSubTotal2" runat="server" Text="Sub Total:" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtSubTotal2" runat="server"  CssClass="textMargin" ReadOnly="True"></asp:TextBox>

        </div>
        </div>
            <div class="container">
        <div >
            <asp:Label ID="lblItemName3" runat= "server" Text="Item name:" CssClass="labelWidth"></asp:Label>
            <asp:TextBox ID="txtItem3" runat="server" CssClass="textMargin" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="lblUnitPrice3" runat="server" Text="Unit Price:" CssClass="labelWidth"></asp:Label>
            <asp:TextBox ID="txtUnitPrice3" runat="server" CssClass="textMargin" ReadOnly="True"></asp:TextBox>
            <asp:Label ID="lblQuantity3" runat="server" Text="Quantity:" CssClass="labelWidth"></asp:Label>
            <asp:TextBox ID="txtQuantity3" runat="server" CssClass="textMargin" ReadOnly="True"></asp:TextBox>
             <asp:Label ID="lblSubTotal3" runat="server" Text="Sub Total:" CssClass="labelWidth" ></asp:Label>
            <asp:TextBox ID="txtSubTotal3" runat="server"  CssClass="textMargin" ReadOnly="True"></asp:TextBox>


        </div>
            </div>
            <div class="container">
                    <div> 
                <asp:Label ID="lblTotal" runat="server" Text="Total:" CssClass="labelWidth" ></asp:Label>
                <asp:TextBox ID="txtSummary" runat="server" CssClass="textMargin" ReadOnly="True" ></asp:TextBox>    
                    </div>
            </div>
            </fieldset>  <!-- Footer is ommited on print page -->

    </form>
</body>
</html>
