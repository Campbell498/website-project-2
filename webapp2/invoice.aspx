<%@ Page Language="C#" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="webform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Good GUms</title>
    <link rel="stylesheet" href="StyleSheet.css" />
     
</head>
    <body>
        <nav>
            <ul>
                <li><a class="active" href="stocktake.aspx">Stocktake</a></li>
                <li><a class="active" href="invoice.aspx">Invoice</a></li>
                <li><a class="active" href="add.aspx">Add record</a></li>
                <li><a class="active" href="index.aspx">Home</a></li>
                <li><a class="active" href="chart.aspx">Chart</a></li>
            </ul>
        </nav>
        <h1>Plant Order Form</h1>
        <h3>Please Fill in the form below</h3>
        <main>
        <form id="form1" runat="server">
            <fieldset>
                <legend>Item Order Form:</legend>  <!-- Start of invoice form -->
                <div class="container">
                    <div>
                        <asp:Label ID="lblFullName" runat="server" Text="Full name:" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtFullName" runat="server" CssClass="textMargin"></asp:TextBox>
                    </div>
                </div>
                <div class="container">
                    <div>
                        <asp:Label ID="lblItemName1" runat="server" Text="Item name:" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtItem1" runat="server"  CssClass="webformtextMargin" MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Item (row 1) is required" ControlToValidate="txtItem1" Text="*"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblUnitPrice1" runat="server" Text="Unit Price:" CssClass="labelWidth" ></asp:Label>
                        <asp:TextBox ID="txtUnitPrice1" runat="server" CssClass="webformtextMargin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Unit price (row 1) is required" Text="*" ControlToValidate="txtUnitPrice1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Unit price (row 1) must be currency between 0.00 and 1000.00" ControlToValidate="txtUnitPrice1" Display="None" Type="Currency" MaximumValue="1000.00" MinimumValue="0.00" Text=""></asp:RangeValidator>
                        <asp:Label ID="lblQuantity1" runat="server" Text="Quantity:" CssClass="labelWidth" ></asp:Label>
                        <asp:TextBox ID="txtQuantity1" runat="server"  CssClass="webformtextMargin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Quantity (row1) is required" ControlToValidate="txtQuantity1" Text="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" Display="None" runat="server" ErrorMessage="Quantity (row1) must be an integer between 0 and 100" MaximumValue="100" MinimumValue="0" Type="Integer" ControlToValidate="txtQuantity1"></asp:RangeValidator>
                        <asp:Label ID="lblSubTotal1" runat="server" Text="Sub total" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtSubTotal1" runat="server"  CssClass="webformtextMargin" ></asp:TextBox>
                    </div>
                </div>
                <div class="container"> <!-- Container class added so div can be styled using CSS -->
                    <div>
                        <asp:Label ID="lblItemName2" runat= "server" Text="Item name:" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtItem2" runat="server" CssClass="webformtextMargin"  MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Item (row 2) is required" ControlToValidate="txtItem1" Text="*"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblUnitPrice2" runat="server" Text="Unit Price:" CssClass="labelWidth" ></asp:Label>
                        <asp:TextBox ID="txtUnitPrice2" runat="server" CssClass="webformtextMargin" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Unit price (row 2) is required" Text="*" ControlToValidate="txtUnitPrice1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Unit price (row 2) must be currency between 0.00 and 1000.00" ControlToValidate="txtUnitPrice1" Display="None" Type="Currency" MaximumValue="1000.00" MinimumValue="0.00" Text=""></asp:RangeValidator>
                        <asp:Label ID="lblQuantity2" runat="server" Text="Quantity" CssClass="labelWidth" ></asp:Label>
                        <asp:TextBox ID="txtQuantity2" runat="server"  CssClass="webformtextMargin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Quantity (row1) is required" ControlToValidate="txtQuantity1" Text="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" Display="None" runat="server" ErrorMessage="Quantity (row1) must be an integer between 0 and 100" MaximumValue="100" MinimumValue="0" Type="Integer" ControlToValidate="txtQuantity1"></asp:RangeValidator>
                        <asp:Label ID="lblSubTotal2" runat="server" Text="Sub total" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtSubTotal2" runat="server"  CssClass="webformtextMargin" ></asp:TextBox>
                    </div>
                </div>
                <div class="container">
                    <div>
                        <asp:Label ID="lblItemName3" runat= "server" Text="Item name:" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtItem3" runat="server" CssClass="webformtextMargin"  MaxLength="100"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Item (row 2) is required" ControlToValidate="txtItem1" Text="*"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblUnitPrice3" runat="server" Text="Unit Price:" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtUnitPrice3" runat="server" CssClass="webformtextMargin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Unit price (row 2) is required" Text="*" ControlToValidate="txtUnitPrice1"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Unit price (row 2) must be currency between 0.00 and 1000.00" ControlToValidate="txtUnitPrice1" Display="None" Type="Currency" MaximumValue="1000.00" MinimumValue="0.00" Text=""></asp:RangeValidator>
                        <asp:Label ID="lblQuantity3" runat="server" Text="Quantity:" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtQuantity3" runat="server" CssClass="webformtextMargin"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Quantity (row1) is required" ControlToValidate="txtQuantity1" Text="*"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator6" Display="None" runat="server" ErrorMessage="Quantity (row1) must be an integer between 0 and 100" MaximumValue="100" MinimumValue="0" Type="Integer" ControlToValidate="txtQuantity1"></asp:RangeValidator>
                        <asp:Label ID="lblSubTotal3" runat="server" Text="Sub total" CssClass="labelWidth"></asp:Label>
                        <asp:TextBox ID="txtSubTotal3" runat="server"  CssClass="webformtextMargin" ></asp:TextBox>
                    </div>
                </div>
                <div class="container">
                    <div> 
                        <asp:Label ID="lblTotal" runat="server" Text="Total:" CssClass="labelWidth" ></asp:Label>
                        <asp:TextBox ID="txtSummary" runat="server" CssClass="textMargin" ></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button ID="btnCalculateSubTotal" runat="server" Text="CalculateTotals" OnClick="btnCalculateSubTotal_Click" />
                </div>
                <div>
                    <asp:Button ID="btnPrint" runat="server" Text="Submit" UseSubmitBehavior="true" OnClick="btnPrint_Click" />  <!-- on button click user is taken to print page with invocie details -->
                </div>
                <div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct the following errors:" DisplayMode="List" />
                </div>
            </fieldset>
        </form>
        </main>
        <footer>
            Copyright 2021, Good Gums PTY LTD 
        </footer>
    </body>
</html>
