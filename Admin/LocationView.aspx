<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LocationView.aspx.cs" Inherits="industrytourpakagesystem.Admin.LocationView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="ddldistrict2" runat="server" cssclass="form-select form-select-lg mb-3" AutoPostBack="True" OnSelectedIndexChanged="ddldistrict2_SelectedIndexChanged"></asp:DropDownList>

    <asp:Panel ID="Panel1" runat="server">
    <asp:GridView ID="GridView2" runat="server" cssclass="table" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" AllowPaging="True" DataKeyNames="locationid" OnPageIndexChanging="GridView2_PageIndexChanging" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" AutoGenerateColumns="False" OnRowDataBound="GridView2_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None">
                                         <AlternatingRowStyle BackColor="White" />
                                         <Columns>
                              <asp:TemplateField HeaderText="SL.NO">
                             <ItemTemplate>
                              <%#Container.DataItemIndex+1 %>
                       </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                   <input type="checkbox" runat="server"  name="ch" id="ch" value='<%#Eval("locationid") %>' />
                </ItemTemplate>


            </asp:TemplateField>
            <asp:BoundField DataField="locationname" HeaderText="Location Name" />
                                              <asp:TemplateField HeaderText="District Name">
                                                                  <ItemTemplate>
                                                  <asp:DropDownList id="ddldistrict1" runat="server" cssclass="form-select form-select-lg mb-3">

                                                  </asp:DropDownList>
                                                  </ItemTemplate>
                                             </asp:TemplateField>



            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ControlStyle-CssClass="btn btn-primary mb-1">
<ControlStyle CssClass="btn btn-primary mb-1"></ControlStyle>
            </asp:CommandField>
        
        
            <asp:CommandField EditText="Delete" HeaderText="Delete" ShowDeleteButton="True" />

        
                                           

        
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
        </asp:Panel>
    <asp:Button runat="server" cssclass="btn btn-primary" Text="Delete all" OnClick="Unnamed1_Click" />

</asp:Content>
