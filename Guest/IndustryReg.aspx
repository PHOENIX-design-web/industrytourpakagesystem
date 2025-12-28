<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="IndustryReg.aspx.cs" Inherits="industrytourpakagesystem.Guest.IndustryReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="margin-left:440px;"><strong>New Industry Registration </strong> </h1>
    <p style="margin-left:440px;">&nbsp;</p>


     <div class="tm-container-outer tm-position-relative" id="tm-section-4" style="width:500px;">
               
         <div class="form-group">
             <strong>
         <asp:Label runat="server" Text="Industry Name" CssClass="auto-style2"></asp:Label>
             </strong>
<asp:TextBox ID="txtname" runat="server" cssclass="form-control" ></asp:TextBox>             
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requird Field" ValidationExpression="^[A-Za_z][A-Za-z -]+$" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>

               </div>
         <div class="form-group">
             <strong>
         <asp:Label runat="server" Text="Land Mark" CssClass="auto-style2"></asp:Label>
             </strong>
<asp:TextBox ID="txtland" runat="server" cssclass="form-control"></asp:TextBox>             
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Requird Field"  ForeColor="Red" ControlToValidate="txtland"></asp:RequiredFieldValidator>

               </div>
         <div class="form-group">
                      <strong>
                      <asp:Label runat="server" Text="Category" CssClass="auto-style2"></asp:Label>

                      </strong>

                   <asp:DropDownList id="ddlcategory" runat="server" cssclass="form-control">

                   </asp:DropDownList>            

               </div>
         <div class="form-group">
             <strong>
         <asp:Label runat="server" Text="Email" CssClass="auto-style2"></asp:Label>
             </strong>
<asp:TextBox ID="txtemail" runat="server" cssclass="form-control"></asp:TextBox>             
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must insert Valid  Email" ValidationExpression="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" ForeColor="Red" ControlToValidate="txtemail"></asp:RegularExpressionValidator>

               </div>
         <div class="form-group">
             <strong>
         <asp:Label runat="server" Text="Phone" CssClass="auto-style2"></asp:Label>
             </strong>
<asp:TextBox id="txtphone" runat="server" cssclass="form-control"></asp:TextBox>             
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must insert Valid  Mobile Number" ValidationExpression="[0-9]{10}" ForeColor="Red" ControlToValidate="txtphone"></asp:RegularExpressionValidator>

               </div>
          <div class="form-group">
              <strong>
         <asp:Label runat="server" Text="Pincode" CssClass="auto-style2"></asp:Label>
              </strong>
<asp:TextBox ID="txtpin" runat="server" cssclass="form-control"></asp:TextBox>             
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Must insert Valid  Mobile Number" ValidationExpression="[0-9]{6}" ForeColor="Red" ControlToValidate="txtpin"></asp:RegularExpressionValidator>

               </div>
         <div class="form-group">
                      <strong>
                      <asp:Label runat="server" Text="District Name" CssClass="auto-style2"></asp:Label>

                      </strong>

                   <asp:DropDownList id="ddldistrict" runat="server" cssclass="form-control" OnSelectedIndexChanged="ddldistrict_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>             

               </div>
         <div class="form-group">
                      <strong>
                      <asp:Label runat="server" Text="Location Name" CssClass="auto-style2"></asp:Label>

                      </strong>

                   <asp:DropDownList id="ddllocation" runat="server" cssclass="form-control"></asp:DropDownList>        

               </div>
               <div class="form-group">
                   <strong>
         <asp:Label runat="server" Text="Image" CssClass="auto-style2"></asp:Label>
                   </strong>
          <asp:FileUpload ID="file" runat="server" cssclass="form-control"></asp:FileUpload>            

               </div>
                    <div class="form-group">
                        <strong>
                     <asp:Label runat="server" Text="Id Proof" CssClass="auto-style2"></asp:Label>
                        </strong>
                        <asp:FileUpload ID="File1" runat="server" cssclass="form-control" />

                    </div>
                    <div class="form-group">
                        <strong>
                   <asp:Label runat="server" Text="User Name" CssClass="auto-style2"></asp:Label>
                        </strong>
                   <asp:TextBox ID="txtuname" runat="server" cssclass="form-control"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Must contain minimum 5 and maximum 15 characters" ValidationExpression="[a-z]{5,15}" ForeColor="Red" ControlToValidate="txtuname"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <strong>
                    <asp:Label runat="server" Text="Password" CssClass="auto-style2"></asp:Label>
                        </strong>
                    <asp:TextBox ID="txtpass" runat="server" cssclass="form-control"></asp:TextBox>    
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>

                    </div>
                     <asp:Button ID="button1_click" runat="server" cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase" Text="Submit" OnClick="button1_click_Click"  /> 
         <asp:Button ID="button2_click" runat ="server" cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase" Text="Cancel" OnClick="button2_click_Click" />
            </div> <!-- .tm-container-outer -->



</asp:Content>
