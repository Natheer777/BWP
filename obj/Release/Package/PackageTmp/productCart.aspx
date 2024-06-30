<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productCart.aspx.cs" Inherits="My_Store.productCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="css/proudctCart.css" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="header">
            <tr>
                 <td class="logo"> <i class="fas fa-shopping-basket"></i>Yalla Shopping</td>
                <td class="td">
                   <asp:Button Class="btn" ID="Button3" runat="server" OnClick="Button3_Click" Text="Home" Width="103px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button4" runat="server" OnClick="Button4_Click" Text="Our Products" Width="94px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button5" runat="server" OnClick="Button5_Click" Text="Shopping Cart" Width="97px" />
                </td>
                <td class="td">
                    <asp:Button Class="btn" ID="Button6" runat="server" OnClick="Button6_Click" Text="add Product" Width="97px" />
                </td>
            </tr>
        </table> 
        <div>

           <table>
           <tr><td ><img src="images/cart.png" width="200" height="200" /><br />
               <asp:LinkButton Class="btn" ID="LinkButton1" runat="server" OnClick="cart_click">Your cart is</asp:LinkButton> </td></tr> 
           <tr>
               <td ><asp:Label ID="counterlabel" runat="server" Text=""></asp:Label></td>
               </tr>
               <tr>
               <td><asp:Label ID="pricelabel" runat="server" Text=""></asp:Label></td>
               </tr>
        
           </table>
            <asp:DataList ID="dat_L" runat="server">
                <HeaderTemplate>
                    <table>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><img src="<%# Eval("productImage") %>" height="100" width="100" /></td>
                        <td><%# Eval("productName") %></td>
                        <td><%# Eval("productPrice") %></td>
                        <td><%# Eval("productDescription") %></td>
                        
                        <td><a href="deleteProduct.aspx?id=<%# Eval("id") %>">Delete</a></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                </table>
                </FooterTemplate>
            </asp:DataList>
            <br />
            <asp:Button Class="btn" ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" Width="214px" />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="namelabel" runat="server" Font-Bold="True" Text="Enter your name :" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox class="name" ID="nametext" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="countrylabel" runat="server" Font-Bold="True" Text="Choose your country :" Visible="False"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="countrydrop" runat="server" Visible="False">
                        <asp:ListItem>Syria</asp:ListItem>
                        <asp:ListItem>Egypt</asp:ListItem>
                        <asp:ListItem>Iraq</asp:ListItem>
                        <asp:ListItem>Morocco</asp:ListItem>
                        <asp:ListItem>Algeria</asp:ListItem>
                        <asp:ListItem>Tunisia</asp:ListItem>
                        <asp:ListItem>KSA</asp:ListItem>
                        <asp:ListItem>UAE</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Gremany</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button Class="btn" ID="Button2" runat="server" OnClick="Button2_Click" Text="Do it" Visible="False" Width="209px" />
                </td>
            </tr>
        </table>

    </form>
     <script src="js/productCart.js" ></script>
</body>
</html>
