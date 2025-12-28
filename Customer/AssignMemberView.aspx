<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="AssignMemberView.aspx.cs" Inherits="industrytourpakagesystem.Customer.AcceptedRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" >
         <itemtemplate>

                    <!-- Current Active Tab WITH "show active" classes in DIV tag -->
                        <div class="tm-recommended-place-wrap">
                            <div class="tm-recommended-place"  style=" height:500px;" >
                                <img src="../upload/<%#Eval("image")%>" alt="Icon" class="img-fluid tm-recommended-img">
                                <div class="tm-recommended-description-box">
                                    <h3 class="tm-recommended-title"><%#Eval("membername") %></h3>
                                    <p class="tm-text-highlight"><%#Eval("email") %> </p>
                                    <p class="tm-text-gray"><%#Eval("phone") %> </p>
                                      <p class="tm-text-gray"><%#Eval("districtname") %> </p>
                                     <p class="tm-text-gray"><%#Eval("housename") %> </p>
                                     <p class="tm-text-gray"> amount: <%#Eval("amount") %> </p>

                                </div>
                                   <a href="../Payment/First.aspx?aid=<%#Eval("amount") %>" class="tm-recommended-price-box">PAY

                                </div>
                        </div> 

                         </itemtemplate>

    </asp:ListView>
</asp:Content>
