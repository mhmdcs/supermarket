﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="superMarket_V2.Account._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div id="TitleContent" style="text-align: center">
            <a runat="server" href="~/">
                <asp:Image  ID="Image1" runat="server" ImageUrl="~/Images/moviesLogo.png" alt="logo" BorderStyle="None" />
            </a>
                         <br />
            <br />  
                         <br />
        </div>
    <p>
        <br />
    </p>
    <p>
        <ul >
                        <li><a runat="server" href="~/Account/Login">Login</a></li>
                        <li><a runat="server" href="~/Account/Register">Register</a></li>
                    </ul>
    </p>
</asp:Content>
