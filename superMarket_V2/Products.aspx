<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="superMarket_V2.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <table class="nav-justified">
            <tr>
                <td style="width: 116px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 116px"><strong>Filter Products</strong></td>
                <td>
                <asp:DropDownList ID="ddlProductId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProductId_SelectedIndexChanged">
                </asp:DropDownList>
                </td>
            </tr>
        </table>

    <div id="productsMenu" style="text-align: center">
                    <asp:ListView ID="productsLV" runat="server" >
                <ItemTemplate>
                    <table style="display: inline-block;">
                        <tr>
                            <td>
                                <asp:Image style ="margin-top: 40px" ID="Image2" runat="server" Height="200px" Width="250px"
                                 ImageUrl='<%#"data:Image/jpg;base64," + Convert.ToBase64String((byte[])Eval("productCategoriesImage")) %>' />
                                 <p style = "font-size: large; font-style: normal; margin: 40px; font-weight:bold ">Catalog: <%#Eval("product") %></p>
                                    <p>Product Name: <%#Eval("productCategories") %></p>
                                    <p>Size: <%#Eval("size") %></p>
                                    <p>Expiration Date: <%#Eval("expiryDate", "{0:MMM d, yyyy}") %></p>
                                    <p>Price: <%#Eval("price") %></p>

                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:ListView>
                    </div>

</asp:Content>
