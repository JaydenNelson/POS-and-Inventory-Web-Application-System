﻿<%@ Page Title="AdminServices" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminServices.aspx.cs" Inherits="m4_template.AdminServices" %>

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
                        <asp:Label ID="loggedUser" runat="server" Text="Label" style="float:right;color:white;font-size:1.7em;position:relative; left:-20px; top:8px" ></asp:Label>
           
       </div>
                        <%--Navbar end  --%>
    <div>
        <br><br><br>
    </div>
    <div>
        <center>
        <asp:GridView ID="ProductGrid" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="service_id" style="background-color:darkgrey;text-align:center">
            <Columns>
                <asp:BoundField DataField="service_id" HeaderText="service_id" InsertVisible="False" ReadOnly="True" SortExpression="service_id" />
                <asp:BoundField DataField="service_name" HeaderText="service_name" SortExpression="service_name" />
                <asp:BoundField DataField="service_vat" HeaderText="service_vat" SortExpression="service_vat" />
                <asp:BoundField DataField="service_fee" HeaderText="service_fee" SortExpression="service_fee" />
                <asp:BoundField DataField="service_description" HeaderText="service_description" SortExpression="service_description" />
            </Columns>
        </asp:GridView>
        </center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [Services]"></asp:SqlDataSource>
    </div>
    <div>
        <br><br><br>
    </div>
    <div>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lblname" runat="server" Text="Service Name :"></asp:Label>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lblfee" runat="server" Text="Fee :"></asp:Label>
                <asp:TextBox ID="txtfee" runat="server"></asp:TextBox>
            </div>
        </div>
        </center>
        <br><br>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
            </div>
        </div>
        </center
        <br><br><br>
        <div style="text-align:center">
             <asp:Button ID="btnAddServices" runat="server" Text="Add to Database" OnClick="btnAddServices_Click" />
        </div>
    </div>
</asp:Content>
