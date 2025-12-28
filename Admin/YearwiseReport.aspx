<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="YearwiseReport.aspx.cs" Inherits="industrytourpakagesystem.Admin.YearwiseReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .forms-sample {
            width: 965px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel" style="width: 966px; height: 420px;">
    <div class="content-wrapper">
        <div class="row">
  <div class="col-md-12 grid-margin stretch-card">
    <div class="card">
      <div class="card-body"> 
          <div class="forms-sample">
               <div class="form-group">
                   <label for="exampleInputUsername1">Year</label>
                   <asp:DropDownList ID="ddlyear" runat="server"  cssclass="form-select form-select-lg mb-3"  length="55" Height="40px" Width="869px" ></asp:DropDownList>
              </div>            
              <br/>
              <asp:Button ID="Button1" runat="server" cssclass="btn btn-primary" Text="Button" OnClick="Button1_Click" />
              <br />
              <br/>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="897px" Height="235px">
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
              <br />
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
        </div>
      </div>
    </div>       
  </div>
</div>
</div>
</asp:Content>
