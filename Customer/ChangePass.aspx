<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="industrytourpakagesystem.Customer.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="margin-left:300px">
        <h2>Change Password</h2>
    <div>
        <asp:Label runat="server" Text="New Password : "></asp:Label>
        <asp:TextBox runat="server" Width="200px" cssclass="form-control" id="txt_pwd" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_pwd" ErrorMessage="Please enter a new password" CssClass="error" />
    </div>
    <div>
        <asp:Label runat="server" Text="Confirm New Password : "></asp:Label>
        <asp:TextBox runat="server" Width="200px" cssclass="form-control" id="txt_confirm_pwd" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_confirm_pwd" ErrorMessage="Please confirm your new password" CssClass="error" />
        <asp:CompareValidator runat="server" ControlToValidate="txt_confirm_pwd" ControlToCompare="txt_pwd" ErrorMessage="Passwords do not match" CssClass="error" />
    </div>
              </div>

    <div style="margin-left:350px">
        <asp:Button runat="server" cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase" Width="150px" id="btnpwd" Text="Change Password" OnClick="btnpwd_Click" />
    </div>
    <div>
        <asp:Label runat="server"  id="lblMessage" CssClass="error" />
    </div>

</asp:Content>
