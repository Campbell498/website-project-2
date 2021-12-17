<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chart.aspx.cs" Inherits="chart" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title>Good Gums</title>
</head>
<body> 
     <div>
            <ul> 
                <li><a class="active" href="stocktake.aspx">Stocktake</a></li>
                    <li><a class="active" href="invoice.aspx">Invoice</a></li>  <!-- Nav bar located on every page -->
                    <li><a class="active" href="add.aspx">Add record</a></li>
                    <li><a class="active" href="index.aspx">Home</a></li>
                    <li><a class="active" href="chart.aspx">Chart</a></li>
            </ul>
         </div>
    <form id="form1" runat="server">
        <div>
            <h1>Good Gum's annual revenue</h1>
            <h3>
                Below you will see a line chart displaying the annual revenue of the company year on year over 5 years.
            </h3>
        </div>
        <div class="Chart">
            <asp:Chart ID="Chart1" runat="server" Width="350">
    <Titles>
        <asp:Title Text="Company earnings over 5 years">  
        </asp:Title>
    </Titles>
    <Series> 
        <asp:Series Name="Series1"  ChartArea="ChartArea1" ChartType="Line">  
            <Points>
                <asp:DataPoint AxisLabel="1" YValues="20" Label="20M" />
                <asp:DataPoint AxisLabel="2" YValues="25" Label="25M" />
                <asp:DataPoint AxisLabel="3" YValues="27" Label="27M" />
                <asp:DataPoint AxisLabel="4" YValues="32" Label="32M"/>
                <asp:DataPoint AxisLabel="5" YValues="45" Label="42M" />
            </Points>
        </asp:Series>
    </Series>
    <ChartAreas> 
        <asp:ChartArea Name="ChartArea1">  
            <AxisX Title="Years">
            </AxisX>
            <AxisY Title="Yearly Earnings (Million)">  
            </AxisY>
        </asp:ChartArea>
    </ChartAreas>
</asp:Chart> 
        </div>
    </form>
    <footer>
            Copyright 2021, Good Gums PTY LTD 
    </footer>
</body>
</html>
