<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="MemberReg.aspx.cs" Inherits="industrytourpakagesystem.Industry.MemberReg" %>
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
								<asp:Label  runat="server" Text="Member Name"></asp:Label>
								<asp:TextBox ID="txtname" runat="server" cssclass="col-lg-6" Width="420px"></asp:TextBox>
<%--								                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requird Field" ValidationExpression="^[A-Za_z][A-Za-z -]+$" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>--%>


							</div>
													<br />

								<asp:Label  runat="server" Text="House Name"></asp:Label>
								<asp:TextBox ID="txthouse" runat="server" cssclass="col-lg-6" Style="margin-left:10px" Width="420px"></asp:TextBox>
<%--						                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requird Field"  ForeColor="Red" ControlToValidate="txthouse"></asp:RequiredFieldValidator>--%>

							</div>
													<br />

				<div>
								<asp:Label  runat="server"  Text="Email" ></asp:Label>

								<asp:TextBox ID="txtemail" runat="server" width="420" cssclass="col-lg-6"></asp:TextBox>
<%--						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must insert Valid  Email" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" ForeColor="Red" ControlToValidate="txtemail"></asp:RegularExpressionValidator>--%>

							</div>
													<br />

				<div>
								<asp:Label  runat="server" Text="Phone"></asp:Label>
								<asp:TextBox ID="txtno" runat="server" width="420" cssclass="col-lg-6" ></asp:TextBox>
<%--						<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must insert Valid  Mobile Number" ValidationExpression="[0-9]{10}" ForeColor="Red" ControlToValidate="txtno"></asp:RegularExpressionValidator>--%>

							</div>
													<br />
	 <div>
					
						<asp:Label  runat="server" Text="District" ></asp:Label>
						<asp:DropDownList ID="ddldistrict" runat="server" cssclass="col-lg-6" Style="margin-left:40px" width="420px" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
							</div>
													<br />

					<div>
						<asp:Label  runat="server" Text="Location"></asp:Label>
						<asp:DropDownList ID="ddllocation" runat="server" cssclass="col-lg-6" style="margin-left:30px" Width="420"></asp:DropDownList>

							</div>
													<br />

				<div>
						<asp:Label  runat="server" Text="Image"></asp:Label>
						<asp:FileUpload ID="file1" runat="server"  cssclass="col-lg-6" Style="margin-left:40px" length="50px" />
							</div>
																		<br />

				<div>
						<asp:Label  runat="server" Text="Id.Proof"></asp:Label>
						
						<asp:FileUpload ID="file2" runat="server"  Style="margin-left:40px" csclass="form-control"/>

							</div>
								<br />			
								<%--<textarea class="text-msg" placeholder="Message"></textarea>--%>
								<br />
								
	 <div>
								<asp:Button ID="Button1" runat="server" Style="margin-left:200px" class="site-btn" Text="Submit" OnClick="Button1_Click"/>	
								<asp:Button ID="Button2" runat="server" Style="margin-left:30px" class="site-btn" Text="Cancel" OnClick="Button2_Click"/>	

							</div>
		<br />
						
				
		
		
	</section>
	<!-- Contact section end  -->

	

</asp:Content>
