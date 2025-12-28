<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="RequestView.aspx.cs" Inherits="industrytourpakagesystem.Industry.RequestView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" GridLines="None" ForeColor="Black">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="customername" HeaderText="Customer Name" />
            <asp:BoundField DataField="sectiontype" HeaderText="Section type" />
            <asp:BoundField DataField="sectiontime" HeaderText=" Time" />
                        <asp:BoundField DataField="noofpersons" HeaderText="No Of Persons" />

                        <asp:BoundField DataField="description" HeaderText="Description" />

                       <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" cssclass="btn btn-Confirm m-2" CausesValidation="False" CommandArgument='<%# Eval("requestid") %>' CommandName= Confirm  Text="Confrim" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" cssclass="btn btn-Reject m-2" CausesValidation="False" CommandArgument='<%# Eval("requestid") %>' CommandName="Reject "  Text="Reject" />
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
    <br />
    <br />
    <br />
    <br />

</asp:Content>
