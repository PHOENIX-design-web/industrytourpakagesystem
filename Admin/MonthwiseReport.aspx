<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="MonthwiseReport.aspx.cs" Inherits="industrytourpakagesystem.Admin.MonthwiseReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="pcoded-main-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->    
          
                <div class="row align-items-center">
                    <div class="col-md-12">
                            <h5 class="mt-5">Report On MonthWise Payments</h5>
                        <hr>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                     <asp:Label ID="Label2" runat="server" Text="Year"></asp:Label>
                                    <asp:DropDownList ID="ddlyear" runat="server"  cssclass="form-select form-select-lg mb-3" length="55" AutoPostBack="True"></asp:DropDownList>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Month"></asp:Label>
                                    <asp:DropDownList ID="ddlmonth" runat="server"  cssclass="form-select form-select-lg mb-3" length="55" AutoPostBack="True"></asp:DropDownList>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" cssclass="btn btn-primary" Text="Submit" OnClick="Button1_Click" />
                                    <br />
                                    <br />
                                    <br />
                                    <br />

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="695px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="SL NO">
                                                  <ItemTemplate>
                    <%#Container.DataItemIndex+1 %>
                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="fromacc" HeaderText="From Acc" />
                                            <asp:BoundField DataField="toacc" HeaderText="To Acc" />
                                             <asp:BoundField DataField="amount" HeaderText="Amount" />

                                             <asp:BoundField DataField="payeddate" HeaderText="Payed Date" DataFormatString="{0:MM/dd/yyyy}" />
                                            <asp:BoundField DataField="status" HeaderText="Status" />

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
                                 </div>
                         </div>
                     </div>
         </div>
         </div>

</asp:Content>
