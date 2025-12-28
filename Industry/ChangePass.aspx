<%@ Page Title="" Language="C#" MasterPageFile="~/Industry/IndustryMaster.Master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="industrytourpakagesystem.Industry.ChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:100px">
        <h2>Change Password</h2>
    </div>
    <div style="margin-left:100px">
        <asp:Label runat="server" Text="New Password : "></asp:Label>
        <asp:TextBox runat="server"  Width="300px" cssclass="form-control" id="txt_pwd" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_pwd" ErrorMessage="Please enter a new password" CssClass="error" />
    </div>
    <div style="margin-left:100px" >
        <asp:Label runat="server" Text="Confirm New Password : "></asp:Label>
        <asp:TextBox runat="server"  Width="300px" cssclass="form-control" id="txt_confirm_pwd" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_confirm_pwd" ErrorMessage="Please confirm your new password" CssClass="error" />
        <asp:CompareValidator runat="server"  ControlToValidate="txt_confirm_pwd" ControlToCompare="txt_pwd" ErrorMessage="Passwords do not match" CssClass="error" />
    </div>
    <div>
        <asp:Button runat="server" style="margin-left:100px"  cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase"  Width="180px" id="btnpwd" Text="Change Password" OnClick="btnpwd_Click" />
    </div>
    <div>
        <asp:Label runat="server" style="margin-left:100px" id="lblMessage" CssClass="error" />
    </div>

</asp:Content>
