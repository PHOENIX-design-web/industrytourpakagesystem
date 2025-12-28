<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="SectionReg.aspx.cs" Inherits="industrytourpakagesystem.Industry.SectionReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section cssclass="contact-section spad" >
		<div class="container" >
			<div class="row">
				<div class="col-lg-4" >
					<div class="contact-text"  >
					
						</div>
						</div>
						</div>
					</div>
				
				<div>
					
							<div >
								<asp:Label  runat="server" Text="Section Type"></asp:Label>
								<asp:TextBox ID="txttype" runat="server" Style="margin-left:50px" cssclass="col-lg-2"></asp:TextBox>

							</div>
							<br />

				           	<div >
								<asp:Label  runat="server" Text="Section Time"></asp:Label>
								<asp:TextBox ID="txttime" runat="server" Style="margin-left:50px" cssclass="col-lg-2"></asp:TextBox>

							</div>
				<br />
					
				           	<div >
								<asp:Label  runat="server" Text="Section Amount"></asp:Label>
								<asp:TextBox ID="txtamount" runat="server" Style="margin-left:30px" cssclass="col-lg-2"></asp:TextBox>

							</div>
					<br />
	<br />
				<asp:Button ID="Button1" runat="server" class="site-btn" Text="Submit" OnClick="Button1_Click"/>	
				<asp:Button ID="Button2" runat="server" class="site-btn" Style="margin-left:60px" Text="Cancel" OnClick="Button2_Click"/>	

							</div>
		<br />
						
				
		
		
	</section>
	<section class="cta-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 d-flex align-items-center">
				</div>
				<div class="col-lg-3 text-lg-right" >
					
				</div>
			</div>
		</div>
	</section>
	
</asp:Content>

