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
            <td class="modal-sm" style="width: 155px; color: #5A1035;">
                <strong>Product Name</strong></td>
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
            <td class="modal-sm" style="width: 155px; height: 23px; color: #5A1035;">
                <strong>Product Type</strong></td>
            <td style="height: 23px">
                <asp:DropDownList ID="ddlProducTypetId" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px; height: 20px;">
                </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px; color: #5A1035;">
                <strong>Product Price</strong></td>
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
            <td class="modal-sm" style="width: 155px; color: #5A1035;">
                <strong>Product Size</strong></td>
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
            <td class="modal-sm" style="width: 155px; height: 23px; color: #5A1035;">
                <strong>Product Expiration Date</strong></td>
            <td style="height: 23px">
                <asp:TextBox ID="txtExpiryDate" runat="server">01/01/1990</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px; color: #5A1035;"><strong>Upload Product Image</strong></td>
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
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7" />
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
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px; height: 27px;"></td>
            <td style="height: 27px">
                <asp:Button ID="btnShowProducts" runat="server" OnClick="btnShowProducts_Click" Text="Show Products" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
                <asp:Button ID="btnExportExcel0" runat="server" OnClick="btnExportExcel_Click" Text="Export Excel" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
                <asp:Button ID="btnExportWord0" runat="server" OnClick="btnExportWord_Click" Text="Export Word" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
                <asp:Button ID="btnExportPDF0" runat="server" OnClick="btnExportPDF_Click" Text="Export PDF" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7"/>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 155px">&nbsp;</td>
            <td>
                <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="false">
                 <Columns>
                    <asp:BoundField DataField="productCategoriesId" HeaderText="Product ID" />
                    <asp:BoundField DataField="productCategories" HeaderText="Product" />
                    <asp:BoundField DataField="product" HeaderText="Type" />
                    <asp:BoundField DataField="size" HeaderText="Size" />
                    <asp:BoundField DataField="expiryDate" HeaderText="Expiration Date" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    </Columns>
                    <HeaderStyle BackColor="#CC5490" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <p>
    </p>





</asp:Content>
