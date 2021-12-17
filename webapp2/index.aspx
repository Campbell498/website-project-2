<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Good Gums</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head> <!-- Home page is loaded on website startup -->
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
            <div>
                <h1>Customer Purchases</h1>
                <h3>Below is a gridview of existing customer purchases</h3>
            </div>
            <main> <!-- Gridview control with CSS -->
                <div>
                    <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="Red" CellPadding="10" CellSpacing="5" Height="252px" HorizontalAlign="Center" Width="353px">
                    <AlternatingRowStyle BackColor="White" BorderColor="Black" />
                    <EditRowStyle BorderStyle="Dotted" /></asp:GridView>
                </div>
                <div id="Orders">
                    <asp:Label ID="lblOrders" runat="server" Text="" AssociatedControlID="GridView1"></asp:Label>
                </div>
            </main>
        </form>
        <footer>   <!-- Footer located on every page -->
            Copyright 2021, Good Gums PTY LTD 
        </footer>
    </body>
</html>
