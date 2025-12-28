<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DistrictReg.aspx.cs" Inherits="industrytourpakagesystem.Admin.DistrictReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #757575;
            background-clip: padding-box;
            appearance: none;
            border-radius: 5px;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="margin-left:200px; margin-top:52px;">
    <div class="row" style="height:100px;">
        <div class="col-sm-8 col-xl-6" style="height:300px;">
            <div class="bg-light rounded h-100 p-4" style="height:322px; width:618px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-primary" CausesValidation="False" OnClick="LinkButton1_Click">viewdistrict</asp:LinkButton>
                <h6 class="mb-4">District Registration</h6>
                <div class="row mb-3">
                    <div class="col-sm-12">
                        <asp:Label runat="server" Text="District Name"></asp:Label>
                  
                    <div class="col-md-12">
                        <asp:TextBox ID="txtdistrictname" runat="server" CssClass="auto-style1" Width="305px" Height="45px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ForeColor="Red" ControlToValidate="txtdistrictname"></asp:RequiredFieldValidator>
                    </div>
                
                <div class="row">
                    <div class="col-sm-12">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Button1_Click1" />
                    </div>

                </div>
            </div>
                      </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
