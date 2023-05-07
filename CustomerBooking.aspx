<%@ Page Title="CustomerBooking" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerBooking.aspx.cs" Inherits="m4_template.CustomerBooking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="topnav">  <%--Navbar start  --%>
                        <a class="active" runat="server" href="~/Default">Home</a>
                        <div style="float:left;display:inline-block">
                        <asp:TreeView ID="TreeView1" runat="server">
                            <Nodes>
                                <asp:TreeNode Expanded="False" Text="Catalogue" Value="Catalogue">
                                    <asp:TreeNode NavigateUrl="~/Catalogue" Text="Products" Value="Products"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/CatalogueServices" Text="Services" Value="Services"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                            </asp:TreeView>
                        </div>
                        <a runat="server" href="~/CustomerBooking">Make a Booking</a>
                        <a runat="server" href="~/ShoppingCart">Cart</a>
                        <a runat="server" href="~/Default" onclick="logout()" style="color:red">Logout</a>
                        <asp:Label ID="loggedUser" runat="server" Text="Label" style="float:right;color:white;font-size:1.7em;position:relative; left:-20px; top:8px" ></asp:Label>
           
       </div>
                        <%--Navbar end  --%>
    <div>
        <br><br><br>
    </div>
   
    <div>

    </div>
</asp:Content>
