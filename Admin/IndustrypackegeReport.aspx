<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="IndustrypackegeReport.aspx.cs" Inherits="industrytourpakagesystem.Admin.IndustrypackegeReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2 style="margin-top:100px; margin-left:100px;"> Industry Package Report</h2>

    <div style="margin-top:120px; margin-left:-200px;">

    <asp:DropDownList ID="ddlindustry" runat="server" cssclass="form-select form-select-lg mb-3" length="55"  AutoPostBack="True" OnSelectedIndexChanged="ddlindustry_SelectedIndexChanged"  Width="50%"></asp:DropDownList>

        

    
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" Height="212px" Width="1082px" DataKeyNames="requestid" CssClass="auto-style1" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="SI.NO">
                 <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
           </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="customername" HeaderText="Customer Name" />
            <asp:BoundField DataField="sectiontime" HeaderText="Section" />
            <asp:BoundField DataField="noofpersons" HeaderText="No Of Persons" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="requestdate" HeaderText="Date" DataFormatString="{0:MM/dd/yyyy}"/>            
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
