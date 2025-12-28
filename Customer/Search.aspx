<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="industrytourpakagesystem.Customer.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @media (min-width: 1200px) {
            .container {
                max-width: 10px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <div class="tm-container-outer tm-position-relative" id="tm-section-4" style="width:500px;">--%>
               
         <%--<div class="form-group">--%>
          <div class="tm-container-outer tm-position-relative" id="tm-section-4">
    <div style=" margin-left: 550px; margin-top:100px;">
        <div class="form-group">
            <asp:Label runat="server" Text="Search Category Wise"></asp:Label>
            <asp:DropDownList ID="ddlcategory" runat="server"  CssClass="form-control" Height="50px" Width="350px" ></asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Label runat="server" Text="Search District Wise"></asp:Label>
            <asp:DropDownList ID="ddldistrict" runat="server" Height="50px" Width="350px" CssClass="form-control"></asp:DropDownList>
        </div>
        <div style="margin-left:155px;">
            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="btn btn-primary" />

            </div>

    </div>
</div>

        <asp:ListView ID="ListView1" runat="server">
            <itemtemplate>


                 <div class="tab-pane fade show active"  style="    margin-top: 100px;" id="4a"  width:"1500px" style="margin-left:-100px">
                    <!-- Current Active Tab WITH "show active" classes in DIV tag -->
                        <div class="tm-recommended-place-wrap">
                            <div class="tm-recommended-place">
                                <img src="../upload/<%#Eval("image")%>" alt="Icon" class="img-fluid tm-recommended-img">
                                <div class="tm-recommended-description-box">
                                    <h3 class="tm-recommended-title"><%#Eval("industryname") %></h3>
                                    <p class="tm-text-highlight"><%#Eval("email") %> </p>
                                    <p class="tm-text-gray"><%#Eval("districtname") %> </p>
                                     <p class="tm-text-gray"><%#Eval("fromdate")  %> </p>to
                                     <p class="tm-text-gray"><%#Eval("todate") %> </p>  


                                </div>
                                <div class="tm-recommended-price-box">
                               
                                    <p class="tm-recommended-price"><%#Eval("categoryname") %></p>
                                  <%--  <p class="tm-recommended-price-link">Continue Reading</p>--%>
                                                  <a href="ViewMore.aspx?Iid=<%#Eval("industryid") %>">view more</a> 

                            </div>
                                </div>
                                                                                                     

    
                        </div>                        

                      
                    </div> <!-- tab-pane -->
           </itemtemplate>


             </asp:ListView>
    <br />
    <br />
    <br />
    <br />
    <br />
    </asp:Content>

