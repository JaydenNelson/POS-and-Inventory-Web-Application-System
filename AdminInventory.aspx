<%@ Page Title="AdminInventory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminInventory.aspx.cs" Inherits="m4_template.AdminInventory" %>

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
        <asp:GridView ID="ProductGrid" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="serial_no" AllowSorting="True" style="background-color:darkgrey;text-align:center">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="serial_no" HeaderText="serial_no" InsertVisible="False" ReadOnly="True" SortExpression="serial_no" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"/>
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price"/>
                <asp:BoundField DataField="vat" HeaderText="vat" SortExpression="vat"/>
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            </Columns>
        </asp:GridView>
        </center>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [Inventory]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Inventory] WHERE [serial_no] = @original_serial_no AND [name] = @original_name AND [quantity] = @original_quantity AND [unit_price] = @original_unit_price AND [vat] = @original_vat AND [description] = @original_description" InsertCommand="INSERT INTO [Inventory] ([name], [quantity], [unit_price], [vat], [description]) VALUES (@name, @quantity, @unit_price, @vat, @description)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Inventory] SET [name] = @name, [quantity] = @quantity, [unit_price] = @unit_price, [vat] = @vat, [description] = @description WHERE [serial_no] = @original_serial_no AND [name] = @original_name AND [quantity] = @original_quantity AND [unit_price] = @original_unit_price AND [vat] = @original_vat AND [description] = @original_description">
            <DeleteParameters>
                <asp:Parameter Name="original_serial_no" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_quantity" Type="Int32" />
                <asp:Parameter Name="original_unit_price" Type="Decimal" />
                <asp:Parameter Name="original_vat" Type="Decimal" />
                <asp:Parameter Name="original_description" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="unit_price" Type="Decimal" />
                <asp:Parameter Name="vat" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="unit_price" Type="Decimal" />
                <asp:Parameter Name="vat" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="original_serial_no" Type="Int32" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_quantity" Type="Int32" />
                <asp:Parameter Name="original_unit_price" Type="Decimal" />
                <asp:Parameter Name="original_vat" Type="Decimal" />
                <asp:Parameter Name="original_description" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [Inventory]"></asp:SqlDataSource>
    </div>
    <div>
        <br><br><br>
    </div>
    <div>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lblname" runat="server" Text="Name : "></asp:Label>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lblqty" runat="server" Text="Quantity : "></asp:Label>
                <asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
            </div>
        </div>
        </center>
        <br><br>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lblunitprice" runat="server" Text="Unit Price : "></asp:Label>
                <asp:TextBox ID="txtunitprice" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lbldescription" runat="server" Text="Description "></asp:Label>
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
            </div>
        </div>
        </center
        <br><br><br>
        <div style="text-align:center">
            <asp:Button ID="btnAddInventory" runat="server" Text="Add to Database" OnClick="btnAddInventory_Click" />
        </div>
    </div>
</asp:Content>
