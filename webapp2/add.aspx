<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title>Good Gums</title>
</head>
<body> <!-- add page for users to add additional fields into the XML file -->
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
        <h1>Add Data Form</h1>
        <h3>Please Fill in the below form to add more entries to the xml file</h3>
    </header>
    <!-- Each textBox control has a label control with CSS added to it-->
    <form class="AddForm" id="form1" runat="server">
      <main> 
        <div>
           <asp:Label ID="lblID" runat="server" Text="ID:" CssClass="labelWidth margin"></asp:Label>
            <asp:TextBox ID="txtID" runat="server" CssClass="labelWidth"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblFullName" runat="server" Text="Full Name:" CssClass="labelWidth margin"></asp:Label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="labelWidth"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address:" CssClass="labelWidth margin"></asp:Label>
            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
        </div>
         <div>
             <asp:Label ID="lblProductName" runat="server" Text="Product Name:" CssClass="labelWidth margin"></asp:Label>
            <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblUnitPrice" runat="server" Text="Unit Price:" CssClass="labelWidth margin"></asp:Label>
            <asp:TextBox ID="txtUnitPrice" runat="server"></asp:TextBox>
        </div>
         <div>
             <asp:Label ID="lblQuanitity" runat="server" Text="Quantity" CssClass="labelWidth margin"></asp:Label>
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnUpdateFile" runat="server" Text="Submit" CssClass="margin" OnClick="btnUpdateFile_Click" /> <!-- Once the button is clicked it will execute the code in the .cs file -->
        </div>
        </main>
    </form>
     <footer>
            Copyright 2021, Good Gums PTY LTD 
        </footer>
</body>
</html>
