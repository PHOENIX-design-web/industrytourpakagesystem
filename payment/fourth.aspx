<%@ Page Title="" Language="C#" MasterPageFile="PaymentMaster.Master" AutoEventWireup="true" CodeBehind="fourth.aspx.cs" Inherits="industrytourpakagesystem.payment.fourth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style18 {
            width: 699px;
            height: 359px;
        }

        .auto-style20 {
            width: 114px;
            height: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <fieldset>

        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <img alt="" class="auto-style20" src="Images/loading.gif" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" class="auto-style18" src="Images/Process2.JPG" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"
                                >
                            </asp:Timer>
                        </ContentTemplate>
                    </asp:UpdatePanel>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </fieldset>
</asp:Content>
