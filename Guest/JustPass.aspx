<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="JustPass.aspx.cs" Inherits="industrytourpakagesystem.Guest.JustPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
       <section id="about" class="about">
                <div class="container">
                    <div class="row mb-5">
                        <div class="col-md-12 text-center ">
                            <div class="heading wow fadeInUp" data-wow-delay="0.3s">
                              
                                <div class="bord-bot"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                         <div class="col-md-6 m-auto text-center">
                            <div class="body-img-1 wow fadeInUp" data-wow-delay="0.9s">
                                <img src="https://c0.wallpaperflare.com/preview/670/157/264/refinery-oil-industry-gas.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                        <div class="col-md-6 my-auto">
                            <div class="body-cont mb-5 wow fadeInUp" data-wow-delay="0.6s">
                                <div class="bord-bottom"></div>
                                <br />
                              
                                  <h1>Forgot Password</h1>
                                  <br />
 <div class="mb-3">
     <label>Enter your Username</label>
     <br />
         <br />
                                      <asp:TextBox id="txtuname" runat="server"  CssClass="form-control" style="height: 45px;"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtuname">please fill out this field</asp:RequiredFieldValidator>
                                   
                                </div>
                                            <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="btn btn-outline-dark m-2" style="margin-left:200px;" OnClick="Button1_Click"/>
                
                            </div>
                        </div>
                       
                    </div> 
                </div>
            </section>            
    <br />
       <br />
       <br />
       <br />


</asp:Content>
