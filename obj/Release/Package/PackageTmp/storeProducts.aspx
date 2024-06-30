﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="storeProducts.aspx.cs" Inherits="My_Store.storeProudct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="css/storeProudcts.css" />
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="header">
            <tr>
                 <td class="logo"> <i class="fas fa-shopping-basket"></i>Yalla Shopping</td>
                <td class="td">
                   <asp:Button Class="btn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Home" Width="103px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button2" runat="server" OnClick="Button2_Click" Text="Our Products" Width="94px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button3" runat="server" OnClick="Button3_Click" Text="Shopping Cart" Width="97px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button4" runat="server" OnClick="Button4_Click" Text="add Product" Width="97px" />
                </td>
            </tr>
        </table> 

        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table style="align-content:center; width:500px" >
        <tr>
            <td ><h1>List of Products</h1></td>
        </tr>
      
            </HeaderTemplate>
            <ItemTemplate >
                <div  >
                                  <tr   >
               <td><a href="productDescription.aspx?id=<%# Eval("Id") %>">
                   <img src=" <%#Eval("productImage") %>" height="100" width="100" /></a></td></tr>
               <tr>   <td><%#Eval("productName") %></td></tr>
               <tr>   <td><%#Eval("productPrice") %></td></tr>
               <tr>   <td>--------------------</td></tr>  
                </div>

            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</body>
</html>