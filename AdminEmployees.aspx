<%@ Page Title="AdminEmployees" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminEmployees.aspx.cs" Inherits="m4_template.AdminEmployees" %>

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
        <asp:GridView ID="ProductGrid" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="employee_id" AllowSorting="True" style="background-color:darkgrey;text-align:center" Width="629px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="employee_id" HeaderText="employee_id" InsertVisible="False" ReadOnly="True" SortExpression="employee_id" />
                <asp:BoundField DataField="login_id" HeaderText="login_id" SortExpression="login_id"/>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="phone_no" HeaderText="phone_no" SortExpression="phone_no"/>
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"/>
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                <asp:BoundField DataField="monthly_salary" HeaderText="monthly_salary" SortExpression="monthly_salary"/>
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [employee_id] = @original_employee_id AND [login_id] = @original_login_id AND [name] = @original_name AND [phone_no] = @original_phone_no AND [email] = @original_email AND [address] = @original_address AND [monthly_salary] = @original_monthly_salary" InsertCommand="INSERT INTO [Employee] ([login_id], [name], [phone_no], [email], [address], [monthly_salary]) VALUES (@login_id, @name, @phone_no, @email, @address, @monthly_salary)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [login_id] = @login_id, [name] = @name, [phone_no] = @phone_no, [email] = @email, [address] = @address, [monthly_salary] = @monthly_salary WHERE [employee_id] = @original_employee_id AND [login_id] = @original_login_id AND [name] = @original_name AND [phone_no] = @original_phone_no AND [email] = @original_email AND [address] = @original_address AND [monthly_salary] = @original_monthly_salary">
                <DeleteParameters>
                    <asp:Parameter Name="original_employee_id" Type="Int32" />
                    <asp:Parameter Name="original_login_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_phone_no" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_monthly_salary" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="login_id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone_no" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="monthly_salary" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="login_id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="phone_no" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="monthly_salary" Type="Decimal" />
                    <asp:Parameter Name="original_employee_id" Type="Int32" />
                    <asp:Parameter Name="original_login_id" Type="Int32" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_phone_no" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_monthly_salary" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>
        
        <br><br><br>
    </div>
    <div>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lblligin_id" runat="server" Text="Login ID : "></asp:Label>
                <asp:TextBox ID="txtlogin_id" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lblname" runat="server" Text="Name : "></asp:Label>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </div>
        </div>
        </center>
        <br><br>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lblphone_no" runat="server" Text="phone No : "></asp:Label>
                <asp:TextBox ID="txtphone_no" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lblemail" runat="server" Text="Email "></asp:Label>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </div>
              </div>
        </center>
        <br><br>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lbladdress" runat="server" Text="Address : "></asp:Label>
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lblmonthlysalary" runat="server" Text="Monthly Salary "></asp:Label>
                <asp:TextBox ID="txtmonthlysalary" runat="server"></asp:TextBox>
            </div>
        </div>
        </center
        <br><br><br>
        <div style="text-align:center">
            <asp:Button ID="btnAddEmployee" runat="server" Text="Add to Database" OnClick="btnAddEmployee_Click" />
        </div>
    </div>
</asp:Content>
