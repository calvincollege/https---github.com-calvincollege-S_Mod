<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="browse.aspx.cs" Inherits="S_Mod.browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th class="text-center offset-1">Price</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    </tbody>
                </table>
                <asp:DataList ID="ProductsDataList" runat="server" DataKeyField="product_code" EnableViewState="false">
                    <ItemTemplate>
                    <table class="table table-hover">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <asp:Label ID="ProductModel" runat="server" Text='<%# Eval("model") %>' /><br />
                                <h5 class="media-heading"> by <asp:Label ID="Label1" runat="server" Text='<%# Eval("make") %>' /></h5>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>' /></strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-success">
                            Add to cart
                        </button></td>
                    </tr>
                   </table>
                        </ItemTemplate>
                    </asp:DataList>


                
            
        </div>
    </div>
</div>
</asp:Content>
