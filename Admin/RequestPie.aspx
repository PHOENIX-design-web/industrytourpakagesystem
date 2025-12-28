<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="RequestPie.aspx.cs" Inherits="industrytourpakagesystem.Admin.RequestPie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Chart ID="Chart1" runat="server" Height="326px" Width="524px" CssClass="auto-style1" style="margin-top: 3px" >
        <Legends>
    <asp:Legend Alignment="Center" Docking="Left" IsTextAutoFit="true" Name="industryname" LegendStyle="Table" />
</Legends>

        <Series>
            <asp:Series Name="Series1" ChartType="Pie" CustomProperties="PieLineColor=Black, PieLabelStyle=Outside"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="767px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="industryname" HeaderText="Industry" />
            <asp:BoundField DataField="count" HeaderText="Request" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
