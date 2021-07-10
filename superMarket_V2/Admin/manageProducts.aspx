<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageProducts.aspx.cs" Inherits="superMarket_V2.Admin.productManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 216px">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 216px">Upload Product Image</td>
            <td>
                <asp:FileUpload ID="fileProductImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 216px">Product Id</td>
            <td>
                <asp:TextBox ID="txtProductCategoriesId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 216px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Font-Bold="True" Font-Names="Calibri" BorderColor="#B9932F" style="color: #FFFFFF; background-color: #D8B865" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 216px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 216px">&nbsp;</td>
            <td>
                <asp:GridView ID="gvProducts" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
