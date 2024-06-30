﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productDescription.aspx.cs" Inherits="My_Store.proudctDescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="css/proudctDesciption.css" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="header">
            <tr>
                 <td class="logo"> <i class="fas fa-shopping-basket"></i>Yalla Shopping</td>
                <td class="td">
                   <asp:Button Class="btn" ID="Button3" runat="server" OnClick="Button1_Click" Text="Home" Width="103px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button4" runat="server" OnClick="Button2_Click" Text="Our Products" Width="94px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button5" runat="server" OnClick="Button3_Click" Text="Shopping Cart" Width="97px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button6" runat="server" OnClick="Button4_Click" Text="add Product" Width="97px" />
                </td>
            </tr>
        </table> 
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
        <HeaderTemplate>

            </HeaderTemplate>
            <ItemTemplate>
               <div >
            <div>
                <img class="img" src="<%# Eval("productImage") %>" height="300" width="200" />
            </div>
            <div >
                Product name:<%# Eval("productName") %><br />Description : <%# Eval("productDescription") %><br />
                Price : <%# Eval("productPrice") %><br />
            </div>
        </div>
            </ItemTemplate>
            <FooterTemplate>
             
            </FooterTemplate>
        </asp:Repeater>
        <div>
        </div>
        <asp:Button  class="btn" ID="Button1" runat="server" Text="Add to cart" OnClick="Button1_Click" />
    </form>
            <script src="js/proudctDescription.js" ></script>
</body>
</html>