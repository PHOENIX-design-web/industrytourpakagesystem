<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CustomerviewReport.aspx.cs" Inherits="industrytourpakagesystem.Admin.CustomerviewReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" cssclass="btn btn-primary" Text="Export" OnClick="Button1_Click" />
                <br />
     <br />
                <div class="table-responsive">
                   
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Height="212px" Width="1082px" DataKeyNames="customerid" CssClass="auto-style1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="SI.NO">
                 <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
           </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="customername" HeaderText="Customer Name" />
            <asp:BoundField DataField="housename" HeaderText="House Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="districtname" HeaderText="District Name" />
            <asp:BoundField DataField="locationname" HeaderText="Location Name" />
            <asp:BoundField DataField="regdate" HeaderText="Date" />
            
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
         </div>

</asp:Content>
