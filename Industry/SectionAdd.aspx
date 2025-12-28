<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="SectionAdd.aspx.cs" Inherits="industrytourpakagesystem.Industry.SectionAdd" %>
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
				
				<div  >
					
							<div >
								<asp:Label  runat="server" Text="Section Type"></asp:Label>
								<asp:TextBox ID="txtname" runat="server" cssclass="col-lg-2"></asp:TextBox>

							</div>
													<br />

					<div >
								<asp:Label  runat="server" Text="Section Time"></asp:Label>
								<asp:TextBox ID="txthouse" runat="server" cssclass="col-lg-2"></asp:TextBox>

							</div>
													<br />

					<div class="col-lg-6">
								<asp:Label  runat="server" Text="Industry Name"></asp:Label>
								<asp:TextBox ID="txtemail" runat="server" cssclass="col-lg-4"></asp:TextBox>

							</div>
													

								<asp:Button ID="Button1" runat="server" class="site-btn" Text="Submit" OnClick="Button1_Click"/>	
					<br />
					<br />
													<asp:Button ID="Button2" runat="server" class="site-btn" Text="Cancel" OnClick="Button2_Click"/>	

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
