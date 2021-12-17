<%@ Page Language="C#" AutoEventWireup="true" CodeFile="stocktake.aspx.cs" Inherits="stocktake" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" href="StyleSheet.css" />
    <title>Good Gums</title>
   
</head>
    <body>
        <form id="form1" runat="server">
            <nav>
                <ul>
                    <li><a class="active" href="stocktake.aspx">Stocktake</a></li>
                    <li><a class="active" href="invoice.aspx">Invoice</a></li>
                    <li><a class="active" href="add.aspx">Add record</a></li>
                    <li><a class="active" href="index.aspx">Home</a></li>
                    <li><a class="active" href="chart.aspx">Chart</a></li>
                </ul>
            </nav>
            <header>
                <h1>Item Stocktake</h1>
                <h3>Please fill in the folloiwing form to take stock of existing inventory</h3>
            </header>
            <main>
            <div class="container">
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Reorder Level:"></asp:Label> <!-- Plus and Minus buttons also perfom calculate functions -->
                    <asp:Button ID="btnMinus" runat="server" Text="-" OnClick="btnMinus_Click" /><asp:TextBox ID="txtLevel" runat="server" Text="10" CssClass="textbox" ReadOnly="True" ></asp:TextBox><asp:Button ID="btnPlus" runat="server" Text="+" OnClick="btnPlus_Click" />
                </div>
            </div>
            <div class="container">
                <div>
                    <asp:Label ID="lblItemName1" runat="server" Text="Item name:" ></asp:Label>
                    <asp:TextBox ID="txtItem1" runat="server"  CssClass="textMargin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvItem1" runat="server" ErrorMessage="Item (row 1) is required" Text="*" ControlToValidate="txtItem1"></asp:RequiredFieldValidator>  <!-- each text box has a RFV attached -->
                    <asp:Label ID="lblUnitPrice1" runat="server" Text="Unit Price:" ></asp:Label>
                    <asp:TextBox ID="txtUnitPrice1" runat="server" CssClass="textMargin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfcPrice1" runat="server" ErrorMessage="Unit price (row 1) is required" Text="*" ControlToValidate="txtUnitPrice1"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPrice1" runat="server" Display="None" Type="currency" Text="" ErrorMessage="Unit price (row 1) must be currency between 0.00 and 1000.00." ControlToValidate="txtUnitPrice1" MinimumValue="0.00" MaximumValue="1000.00"></asp:RangeValidator>
                    <asp:Label ID="lblQuantity1" runat="server" Text="Stock Quantity:" ></asp:Label>
                    <asp:TextBox ID="txtQuantity1" runat="server"  CssClass="textMargin"></asp:TextBox>
                    <asp:RangeValidator ID="rvQuantity1" runat="server" Text="" Display="None" Type="Integer" ErrorMessage="Stock quantity (row 1) must be an integer between 0 and 100" MaximumValue="100" MinimumValue="0" ControlToValidate="txtQuantity1"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="rfvQuantity1" runat="server" ErrorMessage="Stock quantity (row 1) is required" Text="*" ControlToValidate="txtQuantity1"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblReorderQuantity1" runat="server" Text="Reorder quantity:" ></asp:Label>
                    <asp:TextBox ID="txtReorderQuantity1" runat="server"  CssClass="textMargin"></asp:TextBox>
                    <asp:Label ID="lblSubTotal1" runat="server" Text="Subtotal:" ></asp:Label>
                    <asp:TextBox ID="txtSubTotal1" runat="server"  CssClass="textMargin" ></asp:TextBox>            
                </div>
            </div>
            <div class="container">
                <div>
                    <asp:Label ID="lblItemName2" runat= "server" Text="Item name:" ></asp:Label>
                    <asp:TextBox ID="txtItem2" runat="server" CssClass="textMargin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvItem2" runat="server" ErrorMessage="Item (row 2) is required" Text="*" ControlToValidate="txtItem2"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblUnitPrice2" runat="server" Text="Unit Price:"  ></asp:Label>
                    <asp:TextBox ID="txtUnitPrice2" runat="server" CssClass="textMargin" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPrice2" runat="server" ErrorMessage="Unit price (row 2) is required" Text="*" ControlToValidate="txtUnitPrice2"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvPrice2" runat="server" Display="None" Type="currency" Text="" ErrorMessage="Unit price (row 2) must be currency between 0.00 and 1000.00." ControlToValidate="txtUnitPrice2" MinimumValue="0.00" MaximumValue="1000.00"></asp:RangeValidator>
                    <asp:Label ID="lblQuantity2" runat="server" Text="Stock Quantity:"></asp:Label>
                    <asp:TextBox ID="txtQuantity2" runat="server"  CssClass="textMargin"></asp:TextBox>
                    <asp:RangeValidator ID="rvQuantity2" runat="server" Text="" Display="None" Type="Integer" ErrorMessage="Stock quantity (row 2) must be an integer between 0 and 100" MaximumValue="100" MinimumValue="0" ControlToValidate="txtQuantity2"></asp:RangeValidator> <!-- range validator is used to ensure user is inputting correct data -->
                    <asp:RequiredFieldValidator ID="rfvQuantity2" runat="server" ErrorMessage="Stock quantity (row 2) is required" Text="*" ControlToValidate="txtQuantity2"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblReorderQuantity2" runat="server" Text="Reorder quantity:" ></asp:Label>
                    <asp:TextBox ID="txtReorderQuantity2" runat="server"  CssClass="textMargin"></asp:TextBox>
                    <asp:Label ID="lblSubTotal2" runat="server" Text="Subtotal:" ></asp:Label>
                    <asp:TextBox ID="txtSubTotal2" runat="server"  CssClass="textMargin" ></asp:TextBox>
                </div>
            </div>
            <div class="container">
                <div>
                    <asp:Label ID="lblItemName3" runat= "server" Text="Item name:" ></asp:Label>
                    <asp:TextBox ID="txtItem3" runat="server" CssClass="textMargin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvItem3" runat="server" ErrorMessage="Item (row 3) is required" Text="*" ControlToValidate="txtItem3"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblUnitPrice3" runat="server" Text="Unit Price:" ></asp:Label>
                    <asp:TextBox ID="txtUnitPrice3" runat="server" CssClass="textMargin"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPrice3" runat="server" ErrorMessage="Unit price (row 3) is required" Text="*" ControlToValidate="txtUnitPrice3"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvUnitPrice3" runat="server" Display="None" Type="currency" Text="" ErrorMessage="Unit price (row 3) must be currency between 0.00 and 1000.00." ControlToValidate="txtUnitPrice3" MinimumValue="0.00" MaximumValue="1000.00"></asp:RangeValidator>
                    <asp:Label ID="lblQuantity3" runat="server" Text="Stock Quantity:" ></asp:Label>
                    <asp:TextBox ID="txtQuantity3" runat="server" CssClass="textMargin"></asp:TextBox>
                    <asp:RangeValidator ID="rvQuantity3" runat="server" Text="" Display="None" Type="Integer" ErrorMessage="Stock quantity (row 3) must be an integer between 0 and 100" MaximumValue="100" MinimumValue="0" ControlToValidate="txtQuantity3"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="rfvQuantity3" runat="server" ErrorMessage="Stock quantity (row 3) is required" Text="*" ControlToValidate="txtQuantity3"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblReorderQuantity3" runat="server" Text="Reorder quantity:" ></asp:Label>
                    <asp:TextBox ID="txtReorderQuantity3" runat="server"  CssClass="textMargin" ></asp:TextBox>
                    <asp:Label ID="lblSubTotal3" runat="server" Text="Subtotal:" ></asp:Label>
                    <asp:TextBox ID="txtSubTotal3" runat="server"  CssClass="textMargin" ></asp:TextBox>
                </div>
            </div>
            <div>
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            </div>
            <div>
                <asp:ValidationSummary ID="vsStocktake" runat="server" HeaderText="Please correct the following errors" DisplayMode="list" Font-Overline="False" Font-Size="Medium" Font-Underline="True" />
            </div>
            </main>
        </form>
        <footer>
            Copyright 2021, Good Gums PTY LTD 
        </footer>
    </body>
</html>
