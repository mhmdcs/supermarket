<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="superMarket_V2.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <table class="nav-justified">
        <tr>
            <td style="width: 174px"><strong>Filter Products</strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 174px">
                <asp:DropDownList ID="ddlProductId" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProductId_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 174px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 174px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 174px">




                            <div id="ProductsList" style="text-align: left">


                                <asp:ListView ID="productsLV" runat="server">
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td>
                                                    <ItemTemplate>
                               <asp:Image ID="Image2" runat="server" Height="400px" Width="500px"
                                 ImageUrl='<%#"data:Image/jpg;base64," + Convert.ToBase64String((byte[])Eval("productCategoriesImage")) %>' />

                            <%--how to retrieve image from database to listview--%>
                                </ItemTemplate>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <hd1><b style = "font-size: large; font-style: normal">Catalog: <%#Eval("product") %></hd1>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Product Name: <%#Eval("productCategories") %></p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Size: <%#Eval("size") %></p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Expiration Date: <%#Eval("expiryDate") %></p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <p>Price: <%#Eval("price") %></p>
                                                </td>
                                            </tr>


                                            <br />
                                            <br />
                                        </table>
                                    </ItemTemplate>
                                    <ItemSeparatorTemplate>
                                        
                                        <hr>

                                    </ItemSeparatorTemplate>
                                </asp:ListView>


                            </div>





            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 174px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>
