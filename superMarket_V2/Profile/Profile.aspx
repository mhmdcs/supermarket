<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="superMarket_V2.Profile.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <p>
        <br />
        USER PROFILE PAGE</p>
    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">Name</td>
            <td>
                <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Phone Number</td>
            <td>
                <asp:TextBox ID="txtCustomerPhoneNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 22px">Email</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtCustomerEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px; height: 22px;">Location</td>
            <td style="height: 22px">
                <asp:DropDownList ID="ddlLocationId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Credit Card Number</td>
            <td>
                <asp:TextBox ID="txtCustomerCreditNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Expiration Date</td>
            <td>
                <asp:TextBox ID="txtCustomerCreditExpiration" runat="server">01/01/1990</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">CVC Code</td>
            <td>
                <asp:TextBox ID="txtCustomerCreditCVC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save Info" OnClick="btnSave_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 129px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 129px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>
