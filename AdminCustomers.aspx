<%@ Page Title="AdminCustomers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminCustomers.aspx.cs" Inherits="m4_template.AdminCustomers" %>

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
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" style="background-color:darkgray">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" DeleteCommand="DELETE FROM [WebUser] WHERE [UserID] = @original_UserID AND [Name] = @original_Name AND [Surname] = @original_Surname AND [Email] = @original_Email AND [Password] = @original_Password" InsertCommand="INSERT INTO [WebUser] ([Name], [Surname], [Email], [Password]) VALUES (@Name, @Surname, @Email, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserID], [Name], [Surname], [Email], [Password] FROM [WebUser] WHERE ([IsAdmin] = @IsAdmin)" UpdateCommand="UPDATE [WebUser] SET [Name] = @Name, [Surname] = @Surname, [Email] = @Email, [Password] = @Password WHERE [UserID] = @original_UserID AND [Name] = @original_Name AND [Surname] = @original_Surname AND [Email] = @original_Email AND [Password] = @original_Password">
                <DeleteParameters>
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Surname" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="N" Name="IsAdmin" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Surname" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="original_UserID" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Surname" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>
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
                <asp:Label ID="lblsurname" runat="server" Text="Surname : "></asp:Label>
                <asp:TextBox ID="txtsurname" runat="server"></asp:TextBox>
            </div>
        </div>
        </center>
        <br><br>
        <center>
        <div style="max-width:50%">
            <div style="float:left">
                <asp:Label ID="lblemail" runat="server" Text="Email : "></asp:Label>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </div>
            <div style="float:right">
                <asp:Label ID="lblpassword" runat="server" Text="Password "></asp:Label>
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </div>
        </div>
        </center
        <br><br><br>
        <div style="text-align:center">
            <asp:Button ID="btnAddCustomer" runat="server" Text="Add to Database" OnClick="btnAddCustomer_Click"  />
        </div>
    </div>


    <div>
        <br><br><br>
        <br><br><br>
    </div>
     
</asp:Content>
