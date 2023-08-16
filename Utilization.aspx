<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Utilization.aspx.cs" Inherits="bitshack.Utilization" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>VENUE UTILIZATION</h1>
            <h2>BarChart EventType Vs Date </h2>
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="413px" Width="544px">
                <Series>
                    <asp:Series Name="Series1" XValueMember="BookedRoom" YValueMembers="TotalHours"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [BookingDetails]"></asp:SqlDataSource>
        
       
       
        </div>
    </form>
</body>
</html>
