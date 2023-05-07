<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="m4_template.Admin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="topnav">  <%--Navbar start  --%>
                      
                        <a class="active" runat="server" href="~/Default">Home</a>
                        <div style="float:left;display:inline-block">
                        <asp:TreeView ID="TreeView1" runat="server">
                            <Nodes>
                                <asp:TreeNode Expanded="False" Text="Products" Value="Products">
                                    <asp:TreeNode NavigateUrl="~/AdminInventory" Text="Inventory" Value="Inventory"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/AdminServices" Text="Services" Value="Services"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                        </asp:TreeView>
                        </div>
                        <a runat="server" href="~/AdminSales">Sales</a>
                        <a runat="server" href="~/AdminCustomers">Users</a>
                        <a runat="server" href="~/AdminEmployees">Employees</a>
                        <asp:TreeView ID="TreeView2" runat="server">
                            <Nodes>
                                <asp:TreeNode Expanded="False" Text="Reports">
                                    <asp:TreeNode NavigateUrl="~/SalesReport" Text="Sales Report" Value="Sales Report"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/EmployeeReport" Text="Employee Report" Value="Employee Report"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/CustomerReport" Text="Customer Report" Value="Customer Report"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/InventorySoldReport" Text="Inventory Report" Value="Inventory Report"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                        </asp:TreeView>
                        <a runat="server" href="~/Default" onclick="logout()" style="color:red">Logout</a>
                        <asp:Label ID="Label1" runat="server" Text="Label" style="float:right;color:white;font-size:1.7em;position:relative; left:-20px; top:8px" ></asp:Label>
           
       </div>
                        <%--Navbar end  --%>
       <div>
           <br><br><br><br><br><br>
           <h1>
               <center>
                   <asp:Label ID="loggedUser" runat="server" Text="Label" style="float:right;font-size:1.7em;position:relative; left:-20px; top:8px"></asp:Label>
                </center>
           </h1>

       </div>
       <div>
           <br><br><br><br><br><br><br><br><br><br><br><br>
       </div>
</asp:Content>
