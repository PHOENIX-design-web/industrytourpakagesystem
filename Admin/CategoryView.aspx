<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CategoryView.aspx.cs" Inherits="industrytourpakagesystem.Admin.CategoryView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView2" runat="server" cssclass="table"  AllowPaging="True" DataKeyNames="categoryid" OnPageIndexChanging="GridView2_PageIndexChanging" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                         <AlternatingRowStyle BackColor="White" />
                                         <Columns>
                              <asp:TemplateField HeaderText="SL.NO">
                             <ItemTemplate>
                              <%#Container.DataItemIndex+1 %>
                       </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                   <input type="checkbox" runat="server" name="ch" id="ch" value='<%#Eval("categoryid") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="categoryname" HeaderText="Category Name" />
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ControlStyle-CssClass="btn btn-primary mb-1">
<ControlStyle CssClass="btn btn-primary mb-1"></ControlStyle>
            </asp:CommandField>

            <asp:CommandField EditText="Delete" HeaderText="Delete" ShowDeleteButton="True" />
                                    </Columns>    
                                         <EditRowStyle BackColor="#7C6F57" />
                                         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#E3EAEB" />
                                         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#F8FAFA" />
                                         <SortedAscendingHeaderStyle BackColor="#246B61" />
                                         <SortedDescendingCellStyle BackColor="#D4DFE1" />
                                         <SortedDescendingHeaderStyle BackColor="#15524A" />
                               </asp:GridView>
    <asp:Button runat="server" cssclass="btn btn-primary" Text="Delete all" OnClick="Unnamed1_Click" />

</asp:Content>
