<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="AcceptedRequest.aspx.cs" Inherits="industrytourpakagesystem.Industry.AssignTeam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Width="1224px" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="customername" HeaderText="Customer Name" />
            <asp:BoundField DataField="sectiontype" HeaderText="Section type" />
            <asp:BoundField DataField="sectiontime" HeaderText=" Time" />

                       <asp:TemplateField HeaderText="Assign Member">
                           <ItemTemplate>
                               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("customerid", "AssignMember.aspx?cid{0}") %>' Text="Assign"></asp:HyperLink>
                           </ItemTemplate>
            </asp:TemplateField>

        </Columns>

        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />

    </asp:GridView>
                        
                        

</asp:Content>
