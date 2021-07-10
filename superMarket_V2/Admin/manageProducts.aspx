<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manageProducts.aspx.cs" Inherits="superMarket_V2.Admin.productManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                Product Name</td>
            <td>
                <asp:TextBox ID="txtProductCategories" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px; height: 23px;">
                Product Type</td>
            <td style="height: 23px">
                <asp:DropDownList ID="ddlProducTypetId" runat="server">
                    <asp:ListItem Value="1">Dairy</asp:ListItem>
                    <asp:ListItem Value="2">Beauty &amp; Personal Care</asp:ListItem>
                    <asp:ListItem Value="3">Fresh Vegetables</asp:ListItem>
                    <asp:ListItem Value="4">Fresh Fruits</asp:ListItem>
                    <asp:ListItem Value="5">Meat &amp; Chicken</asp:ListItem>
                    <asp:ListItem Value="6">Cleaning &amp; Washing</asp:ListItem>
                    <asp:ListItem Value="7">Bakery</asp:ListItem>
                    <asp:ListItem Value="8">Frozen Food</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px; height: 20px;">
                </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                Product Price</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                Product Size</td>
            <td>
                <asp:RadioButtonList ID="rbtlSize" runat="server">
                    <asp:ListItem Value="1">250ML</asp:ListItem>
                    <asp:ListItem Value="2">500ML</asp:ListItem>
                    <asp:ListItem Value="3">750ML</asp:ListItem>
                    <asp:ListItem Value="4">1L</asp:ListItem>
                    <asp:ListItem Value="5">250G</asp:ListItem>
                    <asp:ListItem Value="6">500G</asp:ListItem>
                    <asp:ListItem Value="7">750G</asp:ListItem>
                    <asp:ListItem Value="8">1KG</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                Product Expiration Date</td>
            <td>
                <asp:TextBox ID="txtExpiryDate" runat="server">01/01/1990</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">Upload Product Image</td>
            <td>
                <asp:FileUpload ID="fileProductImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Font-Bold="True" Font-Names="Calibri" BorderColor="#B9932F" style="color: #FFFFFF; background-color: #D8B865" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">Product Id</td>
            <td>
                <asp:TextBox ID="txtProductCategoriesId" runat="server"></asp:TextBox>
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                <asp:GridView ID="gvProducts" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>
