<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="superMarket_V2.Order.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <p>
        <br />
        PRODCUTS ORDER PAGE</p>
    <table class="nav-justified">
        <tr>
            <td style="height: 22px" colspan="2">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 465px; height: 22px">&nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 465px; height: 22px">PRODUCT TYPE</td>
            <td style="height: 22px">
                <asp:DropDownList ID="ddlProductId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProductId_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 465px">PRODUCT NAME</td>
            <td>
                <asp:DropDownList ID="ddlProductCategoriesId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 465px">PRODUCT QUANTITY</td>
            <td>
                <asp:TextBox ID="txtcustomerProductOrderQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 465px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 465px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Order" Width="310px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 26px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 465px">
                PRODUCT ID</td>
            <td>
                <asp:TextBox ID="txtCustomerProductOrderId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 465px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Update Order" Width="147px" />
                <asp:Button ID="Button3" runat="server" Text="Delete Order" Width="164px" />
            </td>
        </tr>
        <tr>
            <td style="width: 465px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 465px; height: 20px">&nbsp;</td>
            <td style="height: 20px">
                <asp:Button ID="Button5" runat="server" Text="My Orders" OnClick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 465px">&nbsp;</td>
            <td>
                <asp:GridView ID="gvOrder" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 465px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 465px">Click here to download receipt as PDF</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Download Order Receipt" />
            </td>
        </tr>
    </table>

</asp:Content>
