<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DistrictView.aspx.cs" Inherits="industrytourpakagesystem.Admin.DistrictView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
                                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" DataKeyNames="districtid" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                                         <Columns>
                              <asp:TemplateField HeaderText="SI NO">
                             <ItemTemplate>
                              <%#Container.DataItemIndex+1 %>
                       </ItemTemplate>
                    </asp:TemplateField>
                <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                   <input type="checkbox" runat="server" name="ch" id="ch" value='<%#Eval("districtid") %>' />
                </ItemTemplate>


            </asp:TemplateField>
            <asp:BoundField DataField="districtname" HeaderText="District Name" />
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ControlStyle-CssClass="btn btn-primary mb-1">
<ControlStyle CssClass="btn btn-primary mb-1"></ControlStyle>
            </asp:CommandField>
        
        
            <asp:CommandField EditText="Delete" HeaderText="Delete" ShowDeleteButton="True" />
        
                                    </Columns>
                                  

                                    </asp:GridView>
                               
      <asp:Button runat="server" Text="Delete all" OnClick="Unnamed1_Click" />

</asp:Content>
