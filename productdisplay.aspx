<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="productdisplay.aspx.cs" Inherits="S_Mod.productdisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:DataList ID="ProductDataList" runat="server" DataKeyField="product_code" EnableViewState="false">
          <ItemTemplate>
              <h4><asp:Label ID="ProductMake" runat="server" Text='<%# Eval("make") %>' /></h4>
              <table border="0">
                  <tr>
                        <td>Model:</td>
                        <td><asp:Label ID="ProductModel" runat="server"
                        Text='<%# Eval("model") %>' /></td>
                        <td>Year</td>
                        <td><asp:Label ID="ProductYear" runat="server"
                        Text='<%# Eval("year") %>' /></td>
                  </tr>
                  <tr>
                        <td>Qty:</td>
                        <td><asp:Label ID="ProductQuantity" runat="server"
                        Text='<%# Eval("stock_quantity") %>' /></td>
                        <td>Year</td>
                        <td><asp:Label ID="ProductPrice" runat="server"
                        Text='<%# Eval("price") %>' /></td>
                  </tr>
              </table>
          </ItemTemplate>
      </asp:DataList>
</asp:Content>
