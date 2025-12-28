<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ProfileView.aspx.cs" Inherits="industrytourpakagesystem.Customer.ProfileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
              <h2 class="text-uppercase text-center mb-5">My Profile</h2>

              <%--  <asp:Button ID="Button2" class="fw-bold text-body" runat="server" Text="View" OnClick="Button2_Click1" />--%>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="txtname" class="form-control form-control-lg" runat="server" ReadOnly="true"></asp:TextBox>
                  <label class="form-label" for="form3Example1cg">Your Name</label>
                </div>

                <div class="form-outline mb-4">
                 <asp:TextBox ID="txtemail" class="form-control form-control-lg" runat="server"></asp:TextBox>
                  <label class="form-label" for="form3Example3cg">Your Email</label>
                </div>

                <div class="form-outline mb-4">
                 <asp:TextBox ID="txtphone" class="form-control form-control-lg" runat="server"></asp:TextBox>
                  <label class="form-label" for="form3Example4cg">Phone</label>
                </div>

                <div class="form-outline mb-4">
                	<asp:TextBox ID="txthouse" class="form-control form-control-lg" runat="server"></asp:TextBox>
                  <label class="form-label" for="form3Example4cdg">House</label>
                </div>
                  <div class="form-outline mb-4">
                <asp:TextBox ID="txtpincode" class="form-control form-control-lg" runat="server"></asp:TextBox>
                  <label class="form-label" for="form3Example4cdg">Pincode</label>
                </div>

               

                <div class="d-flex justify-content-center">
                    <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click1" />
                </div>

              

           

         
</asp:Content>
