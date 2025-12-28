<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="AssignMember.aspx.cs" Inherits="industrytourpakagesystem.Industry.AssighnMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	
								
						
	<asp:ListView ID="ListView1" runat="server" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">

                <ItemTemplate>
						<asp:Label  runat="server" Text="Customer Name"></asp:Label>
								<asp:TextBox ID="txtcustomer" runat="server"  cssclass="col-lg-6" value='<%#Eval("customername")%>'></asp:TextBox>
				</ItemTemplate>
		</asp:ListView>
							<br />

					<div class="col-lg-6">
						<asp:Label  runat="server" Text="Assign Member"></asp:Label>
						<asp:DropDownList ID="ddlassign" runat="server" cssclass="col-lg-4"></asp:DropDownList>
							</div>
	<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
</asp:Content>
