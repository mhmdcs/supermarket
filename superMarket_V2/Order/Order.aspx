<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="superMarket_V2.Order.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <p>
        <br />
        </p>
    <table class="nav-justified">
        <tr>
            <td style="height: 22px" colspan="2">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 117px; height: 22px">&nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px; height: 22px; color: #5A1035;"><strong>Prouct </strong><b>C</b><span style="font-weight: bold">atagory</span></td>
            <td style="height: 22px">
                <asp:DropDownList ID="ddlProductId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProductId_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 117px; height: 22px">&nbsp;</td>
            <td style="height: 22px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px; color: #5A1035;"><strong>Prouct Name</strong></td>
            <td>
                <asp:DropDownList ID="ddlProductCategoriesId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px; color: #5A1035;"><strong>Quantity</strong></td>
            <td>
                <asp:TextBox ID="txtcustomerProductOrderQuantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td>
                <asp:Button ID="btnOrder" runat="server" Text="Order" OnClick="btnOrder_Click" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
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
            <td style="width: 117px; color: #5A1035;">
                <strong>Product Order ID</strong></td>
            <td>
                <asp:TextBox ID="txtCustomerProductOrderId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnUpdateOrder" runat="server" Text="Update Order" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7" OnClick="btnUpdateOrder_Click" />
                <asp:Button ID="btnDeleteOrder" runat="server" Text="Delete Order" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7" OnClick="btnDeleteOrder_Click"/>
            </td>
        </tr>
        <tr>
            <td style="width: 117px; height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 117px; height: 20px">&nbsp;</td>
            <td style="height: 20px">
                <asp:Button ID="btnReceipt" runat="server" Text="My Receipts" OnClick="btnReceipt_Click" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
                <asp:Button ID="btnExportPDF" runat="server" Text="Download Receipt as PDF" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7" OnClick="btnExportPDF_Click"/>
            </td>
        </tr>
        <tr>
            <td style="width: 117px; height: 20px">&nbsp;</td>
            <td style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td>
                <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="false">
                    <Columns>
                    <asp:BoundField DataField="customerProductOrderId" HeaderText="Order ID" />
                    <asp:BoundField DataField="customerName" HeaderText="Name" />
                    <asp:BoundField DataField="location" HeaderText="Location" />
                    <asp:BoundField DataField="product" HeaderText="Type" />
                    <asp:BoundField DataField="productCategories" HeaderText="Product" />
                    <asp:BoundField DataField="size" HeaderText="Size" />
                    <asp:BoundField DataField="customerProductOrderQuantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="expiryDate" HeaderText="Expiration Date" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>




</asp:Content>
