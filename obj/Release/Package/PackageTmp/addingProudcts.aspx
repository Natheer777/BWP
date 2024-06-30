<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addingProudcts.aspx.cs" Inherits="My_Store.addingProudcts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="css/addinProudcts.css" />
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
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" ShowFooter="True">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="insert" runat="server" OnClick="insertClick">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="productName" SortExpression="productName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("productName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("productName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="productName" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="productDescription" SortExpression="productDescription">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("productDescription") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("productDescription") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="productDescription" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="productPrice" SortExpression="productPrice">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("productPrice") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("productPrice") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="productPrice" runat="server"></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="productImage" SortExpression="productImage">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("productImage") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("productImage") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:FileUpload ID="productImage" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:ImageField DataImageUrlField="productImage" HeaderText="images"  ControlStyle-Height="100" ControlStyle-Width="100" >
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Proudcts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Proudcts] ([productName], [productDescription], [productPrice], [productImage]) VALUES (@productName, @productDescription, @productPrice, @productImage)" SelectCommand="SELECT * FROM [Proudcts]" UpdateCommand="UPDATE [Proudcts] SET [productName] = @productName, [productDescription] = @productDescription, [productPrice] = @productPrice, [productImage] = @productImage WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="productDescription" Type="String" />
                    <asp:Parameter Name="productPrice" Type="Int32" />
                    <asp:Parameter Name="productImage" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="productDescription" Type="String" />
                    <asp:Parameter Name="productPrice" Type="Int32" />
                    <asp:Parameter Name="productImage" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
