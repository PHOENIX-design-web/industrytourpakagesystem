<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="ViewMore.aspx.cs" Inherits="industrytourpakagesystem.Customer.ViewMore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



   <%-- <script><%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datedrop.aspx.cs" Inherits="SampleSite.datedrop" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %></script>--%>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

                 <div class="tab-pane fade show active" id="4a"  style="width:1500px; margin-left:200px;">
                      <asp:ListView ID="ListView1" runat="server" >
         <itemtemplate>

                    <!-- Current Active Tab WITH "show active" classes in DIV tag -->
                        <div class="tm-recommended-place-wrap">
                            <div class="tm-recommended-place"  style=" height:150px;" >
                                <img src="../upload/<%#Eval("image")%>" alt="Icon" class="img-fluid tm-recommended-img">
                                <div class="tm-recommended-description-box">
                                    <h3 class="tm-recommended-title"><%#Eval("industryname") %></h3>
                                    <p class="tm-text-highlight"><%#Eval("email") %> </p>
                                    <p class="tm-text-gray"><%#Eval("districtname") %> </p>

                                    <br />
                                    
                                  
                                                    <br />
                                  
                                    
                                                   
                                 
                                                    <br />

                                </div>
                                <div class="tm-recommended-price-box">
                               
                                    <p class="tm-recommended-price"><%#Eval("categoryname") %></p>
                                    <br />
                                  <%--  <p class="tm-recommended-price-link">Continue Reading</p>--%>
                                </a>                        
                            </div>
                                </div>

    
                        </div>                        

                         </itemtemplate>
    </asp:ListView>
                     <asp:Label  runat="server" Text="ADD DESCRIPTION"></asp:Label>
                                                          <br />

                                    <asp:TextBox ID="txtdes" runat="server" ></asp:TextBox>
                                                         <br />

                                    <asp:Label  runat="server" Text="NO OF PERSONS"></asp:Label>
                                                        <br />

                                    <asp:TextBox ID="txtperson" runat="server"></asp:TextBox>
                                                        <br />
                                    <asp:Label  runat="server" Text="DATE"></asp:Label>
                                                        <br />


                     <asp:ScriptManager ID="ScriptManager1" runat="server">


                     </asp:ScriptManager>
                     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" ></asp:DropDownList>


                      <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <%--<ajaxtoolkit:calendarextender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" StartDate="1-4-2024" EndDate="4-30-2024" TargetControlID="TextBox1">
        </ajaxtoolkit:calendarextender>--%>



                                    <div>
          
        </div>
                                                       <br />

                     <asp:Label  runat="server" Text="SESSION" ></asp:Label>
        <br />
         <asp:DropDownList ID="ddlsection" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlsection_SelectedIndexChanged">

                                    </asp:DropDownList>
                     <br/>
       <asp:Label ID="Label5" runat="server" Text="SESSION TIME"></asp:Label>
<br />
                     <asp:TextBox ID="txttime" runat="server" CssClass="form-control" OnTextChanged="txttime_TextChanged"></asp:TextBox>
                     <br />
                     <asp:Button ID="Button1" runat="server" cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase" Text="Request" OnClick="Button1_Click" />


                    </div> <!-- tab-pane -->

      

    <div>
    <asp:Button ID="Button2" runat="server" cssclass="btn btn-primary tm-btn-primary tm-btn-send text-uppercase" Text="Go Back" OnClick="Button2_Click" />
    </div>
</asp:Content>
