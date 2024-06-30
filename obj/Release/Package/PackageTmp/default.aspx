<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="My_Store._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="css/default.css" />
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
            <div class="content">
        <h1>Welcome to our Store</h1>
        <p>This site sells products</p>

    </div>
        <div class="footer">
            <div class="container">
                <p>Developed  by :  <br /> 
                    <span>tala_189665</span> &amp; <br />
                    <span>hamza_189380</span> &amp; <br />
                    <span>alessar_208903</span>  &amp; <br /> 
                    <span>taher_200516</span></p>
            </div>
        </div>
        <div>
        </div>
           
    </form>
</body>
</html>
