<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="superMarket_V2.Account.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

                         <p>
    <br />
      <div>

          <table class="style1">
            <%--<tr><td colspan="2">username = ali   & password = ali</td></tr>--%>
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
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="color: #5A1035">
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
                <td class="style2" style="color: #5A1035">
                    <strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" ></asp:TextBox> 
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
                        Text="LOGIN" Font-Bold="True" Font-Names="Calibri" BorderColor="#E46CA8" style="color: #FFFFFF; background-color: #EE9FC7" />
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
        <tr><td colspan="2">If you're new you can <a runat="server" href="~/Account/Signup">sign up here!</a>  </td></tr>
    </p>
<p>
</p>
</asp:Content>
