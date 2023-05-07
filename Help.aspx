<%@ Page Title="Help" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="m4_template.Help" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       <div class="topnav">  <%--Navbar start  --%>
                      
                        <a class="active" runat="server" href="~/Default">Home</a>
                        <a runat="server" href="~/About">About Us</a>
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
                        <a runat="server" href="~/Help">Help</a>
                        <a runat="server" href="~/Login">Login</a>
                    
           
       </div>

    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>
</asp:Content>