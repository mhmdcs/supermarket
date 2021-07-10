<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="superMarket_V2.Account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                         <div id="TitleContent" style="text-align: center">

                             <a runat="server" href="~/">
                <asp:Image  ID="Image1" runat="server" ImageUrl="~/Images/supermarketlogo.png" alt="logo" BorderStyle="None" Height="300px" Width="900px" />
            </a>
        </div>
                         <p>
    <br />
      <div>

          <table class="style1">
            <%--<tr><td colspan="2">username = ali   & password = ali</td></tr>--%>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <strong>Welcome back!</strong></td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <strong>User Name:&nbsp;&nbsp;&nbsp; </strong></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" ></asp:TextBox> 
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" 
                        Text="LOGIN" Font-Bold="True" Font-Names="Calibri" />
<%--                    <asp:Button ID="btnCreateAdmin" runat="server" OnClick="btnCreateAdmin_Click" Text="Admin" Visible="False" />--%>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <tr><td colspan="2">Don't have an account? <a runat="server" href="~/Account/Signup">Sign up here!</a>  </td></tr>
    </p>
<p>
</p>
</asp:Content>
