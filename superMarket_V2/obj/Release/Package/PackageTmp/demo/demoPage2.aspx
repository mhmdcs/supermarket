<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="demoPage2.aspx.cs" Inherits="superMarket_V2.demo.demoPage2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        PRODCUTS ORDER PAGE</p>
    <table class="nav-justified">
        <tr>
            <td style="width: 465px; height: 22px">PRODUCT ID</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtCustomerProductOrderId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 465px; height: 22px">PRODUCT TYPE</td>
            <td style="height: 22px">
                <asp:DropDownList ID="ddlProductId" runat="server">
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
            <td colspan="2" style="height: 26px">
                <asp:Button ID="Button1" runat="server" Text="Order" Width="310px" />
            </td>
        </tr>
        <tr>
            <td style="width: 465px">
                <asp:Button ID="Button2" runat="server" Text="Update Order" Width="147px" />
                <asp:Button ID="Button3" runat="server" Text="Delete Order" Width="164px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 465px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 465px; height: 20px">&nbsp;</td>
            <td style="height: 20px">
                <asp:Button ID="Button5" runat="server" Text="My Orders" />
            </td>
        </tr>
        <tr>
            <td style="width: 465px">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 465px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 465px">Click here to download receipt!</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Download Order Receipt" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
