﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="superMarket_V2.Profile.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <p>
        <br />
        </p>
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; color: #5A1035;"><strong>Name</strong></td>
            <td>
                <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; color: #5A1035;"><strong>Phone Number</strong></td>
            <td>
                <asp:TextBox ID="txtCustomerPhoneNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; height: 22px; color: #5A1035;"><strong>Email</strong></td>
            <td style="height: 22px">
                <asp:TextBox ID="txtCustomerEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px; height: 22px">&nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; height: 22px; color: #5A1035;"><strong>Location</strong></td>
            <td style="height: 22px">
                <asp:DropDownList ID="ddlLocationId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 183px; height: 22px;">&nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; color: #5A1035;"><strong>Credit Card Number</strong></td>
            <td>
                <asp:TextBox ID="txtCustomerCreditNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; color: #5A1035;"><strong>Credit Card Expiration Date</strong></td>
            <td>
                <asp:TextBox ID="txtCustomerCreditExpiration" runat="server">01/01/1990</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px; color: #5A1035;"><strong>Credit Card CVC Code</strong></td>
            <td>
                <asp:TextBox ID="txtCustomerCreditCVC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save Info" OnClick="btnSave_Click" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
            </td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 183px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>
