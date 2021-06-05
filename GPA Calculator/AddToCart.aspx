<%@ Page Title="" Language="C#" MasterPageFile="~/RemoveFromCart.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="GPA_Calculator.AddToCart" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <div class="jumbotron">
        <h1 style="color:indianred">My Documents</h1>
        <p class="lead">The Documents here is to provide help to students!</p>
    </div>

    <div class="row">
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">

            <ItemTemplate>
                <div class="col-xs-6 col-md-3">
                    <div class="thumbnail">
                        <div class="card">
                            <img
                                class="card-img-top"
                                src="./Images/<%# Eval("Image") %>"
                                alt="card image"
                                style="width: 100%; height: 250px;" />
                            <div class="card-body" style="padding: 10px;">
                                <h4 class="card-title"><%# Eval("Name") %></h4>
                                <p class="card-text">
                                    Price: Rs. <%# Eval("Price") %>
                                </p>
                                <p class="card-text">Description : <%# Eval("Description") %></p>
                                <asp:Button ID="btnAddtoCart"
                                    runat="server"

                                    Text="Add to Cart"
                                    OnCommand="btnAddtoCart_Command"
                                    CommandName="viewdetails"
                                    CommandArgument='<%# Eval("Id") %>'
                                    CssClass="btn btn-danger" />
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
