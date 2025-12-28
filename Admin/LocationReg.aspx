<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="LocationReg.aspx.cs" Inherits="industrytourpakagesystem.Admin.LocationReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br><br>
  <div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-sm-12 col-xl-6">
            <div class="bg-light rounded h-100 p-4">
     
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" OnClick="LinkButton1_Click" CausesValidation="False">viewlocation</asp:LinkButton>
                <h6 class="mb-4">Location Registration</h6>

                <div class="mb-3">
                    <asp:Label ID="Label1" runat="server" Text="District Name" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddllocation" runat="server" CssClass="form-select form-select-lg"></asp:DropDownList>
                </div>

                <div class="mb-3">
                    <asp:Label ID="Label2" runat="server" Text="Location Name" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtlocationname" runat="server" CssClass="form-control" Width="480px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtlocationname"></asp:RequiredFieldValidator>
                </div>

                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</div>


</asp:Content>
