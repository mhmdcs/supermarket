<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="superMarket_V2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

 
                 <div id="TitleContent" style="text-align: center">
            <a runat="server" href="~/">
                <asp:Image  ID="Image1" runat="server" ImageUrl="~/Images/supermarketlogo.png" alt="logo" BorderStyle="None"  Height="300px" Width="900px"/>
            </a>
                         <br />
        </div>

        <h1><%: Title %></h1>
        <h2>superMarket service</h2>
        <p class="lead">A supermarket is a service that aims to facilitate the ordering of products over the Internet. You can order the product you want now!</p>

</asp:Content>
