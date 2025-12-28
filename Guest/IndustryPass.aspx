<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="IndustryPass.aspx.cs" Inherits="industrytourpakagesystem.Guest.IndustryPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="margin-left:200px">
        <h1>Forgot</h1>
    <br />

    <asp:Label runat="server" Text="Email"></asp:Label>
    <br />
    <asp:TextBox id="txtemail" runat="server" cssclass="form-control" Width="300px"></asp:TextBox>
    <br />
   </div>
    <asp:Button runat="server" Style="margin-left:250px" cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase" Width="100px" Text="Submit" OnClick="Unnamed3_Click" />
    
    <br />
</asp:Content>
