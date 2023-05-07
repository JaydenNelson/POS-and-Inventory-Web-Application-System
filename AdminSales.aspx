<%@ Page Title="AdminSales" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminSales.aspx.cs" Inherits="m4_template.AdminSales" %>

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
        <br><br><br>
    </div>
    <div style="text-align:center">
        <h3>Please enter the email adress of the customer or employee you would like to search by.</h3>
        <div>
        <br><br><br>
        </div>
        <asp:Label ID="searchBy" runat="server" Text=" Search By : "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True">Customer</asp:ListItem>
            <asp:ListItem>Employee</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="searchFor" runat="server" Text="Search For : "></asp:Label>
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click"/>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sale_id" DataSourceID="SqlDataSource1" AllowSorting="True" HorizontalAlign="Center"  style="background-color:darkgray" Width="828px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" InsertVisible="False" ReadOnly="True" SortExpression="sale_id" />
                <asp:BoundField DataField="employee_id" HeaderText="employee_id" SortExpression="employee_id" />
                <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
                <asp:BoundField DataField="sale_total" HeaderText="sale_total" SortExpression="sale_total" />
                <asp:BoundField DataField="vat_total" HeaderText="vat_total" SortExpression="vat_total" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                <asp:BoundField DataField="grand_total" HeaderText="grand_total" SortExpression="grand_total" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [Sales] WHERE (([customer_id] = @customer_id) OR ([employee_id] = @employee_id))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Sales] WHERE [sale_id] = @original_sale_id AND [employee_id] = @original_employee_id AND [customer_id] = @original_customer_id AND [sale_total] = @original_sale_total AND [vat_total] = @original_vat_total AND [date] = @original_date AND [time] = @original_time AND [total] = @original_total AND [discount] = @original_discount AND [grand_total] = @original_grand_total" InsertCommand="INSERT INTO [Sales] ([employee_id], [customer_id], [sale_total], [vat_total], [date], [time], [total], [discount], [grand_total]) VALUES (@employee_id, @customer_id, @sale_total, @vat_total, @date, @time, @total, @discount, @grand_total)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Sales] SET [employee_id] = @employee_id, [customer_id] = @customer_id, [sale_total] = @sale_total, [vat_total] = @vat_total, [date] = @date, [time] = @time, [total] = @total, [discount] = @discount, [grand_total] = @grand_total WHERE [sale_id] = @original_sale_id AND [employee_id] = @original_employee_id AND [customer_id] = @original_customer_id AND [sale_total] = @original_sale_total AND [vat_total] = @original_vat_total AND [date] = @original_date AND [time] = @original_time AND [total] = @original_total AND [discount] = @original_discount AND [grand_total] = @original_grand_total">
            <DeleteParameters>
                <asp:Parameter Name="original_sale_id" Type="Int32" />
                <asp:Parameter Name="original_employee_id" Type="Int32" />
                <asp:Parameter Name="original_customer_id" Type="Int32" />
                <asp:Parameter Name="original_sale_total" Type="Decimal" />
                <asp:Parameter Name="original_vat_total" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_date" />
                <asp:Parameter DbType="Time" Name="original_time" />
                <asp:Parameter Name="original_total" Type="Decimal" />
                <asp:Parameter Name="original_discount" Type="Decimal" />
                <asp:Parameter Name="original_grand_total" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="employee_id" Type="Int32" />
                <asp:Parameter Name="customer_id" Type="Int32" />
                <asp:Parameter Name="sale_total" Type="Decimal" />
                <asp:Parameter Name="vat_total" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter DbType="Time" Name="time" />
                <asp:Parameter Name="total" Type="Decimal" />
                <asp:Parameter Name="discount" Type="Decimal" />
                <asp:Parameter Name="grand_total" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="customer_id" SessionField="AdminSalesSearch" Type="Int32" />
                <asp:SessionParameter Name="employee_id" SessionField="AdminSalesSearch" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="employee_id" Type="Int32" />
                <asp:Parameter Name="customer_id" Type="Int32" />
                <asp:Parameter Name="sale_total" Type="Decimal" />
                <asp:Parameter Name="vat_total" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter DbType="Time" Name="time" />
                <asp:Parameter Name="total" Type="Decimal" />
                <asp:Parameter Name="discount" Type="Decimal" />
                <asp:Parameter Name="grand_total" Type="Decimal" />
                <asp:Parameter Name="original_sale_id" Type="Int32" />
                <asp:Parameter Name="original_employee_id" Type="Int32" />
                <asp:Parameter Name="original_customer_id" Type="Int32" />
                <asp:Parameter Name="original_sale_total" Type="Decimal" />
                <asp:Parameter Name="original_vat_total" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_date" />
                <asp:Parameter DbType="Time" Name="original_time" />
                <asp:Parameter Name="original_total" Type="Decimal" />
                <asp:Parameter Name="original_discount" Type="Decimal" />
                <asp:Parameter Name="original_grand_total" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>

    <div>
        <br><br><br>
    </div>
    <div>
        <asp:GridView ID="GridView4" runat="server" Width="196px" HorizontalAlign="Center"  style="background-color:darkgray" AutoGenerateColumns="False" DataKeyNames="sale_item_id" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="sale_item_id" HeaderText="sale_item_id" InsertVisible="False" ReadOnly="True" SortExpression="sale_item_id" />
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" SortExpression="sale_id" />
                <asp:BoundField DataField="serial_no" HeaderText="serial_no" SortExpression="serial_no" />
                <asp:BoundField DataField="service_id" HeaderText="service_id" SortExpression="service_id" />
                <asp:BoundField DataField="product_or_service" HeaderText="product_or_service" SortExpression="product_or_service" />
                <asp:BoundField DataField="product_or_service_name" HeaderText="product_or_service_name" SortExpression="product_or_service_name" />
                <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                <asp:BoundField DataField="vat" HeaderText="vat" SortExpression="vat" />
                <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [SaleItems] WHERE ([sale_id] = @sale_id)">
            <SelectParameters>
                <asp:SessionParameter Name="sale_id" SessionField="AdminSalesSaleID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div>
        <br><br><br>
    </div>
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="sale_id" DataSourceID="SqlDataSource2" Width="190px" HorizontalAlign="Center"  style="background-color:darkgray" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" InsertVisible="False" ReadOnly="True" SortExpression="sale_id" />
                <asp:BoundField DataField="employee_id" HeaderText="employee_id" SortExpression="employee_id" />
                <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
                <asp:BoundField DataField="sale_total" HeaderText="sale_total" SortExpression="sale_total" />
                <asp:BoundField DataField="vat_total" HeaderText="vat_total" SortExpression="vat_total" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                <asp:BoundField DataField="discount" HeaderText="discount" SortExpression="discount" />
                <asp:BoundField DataField="grand_total" HeaderText="grand_total" SortExpression="grand_total" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [Sales]"></asp:SqlDataSource>
    </div>
    <div>
        <br><br><br>
    </div>
    <div>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="sale_item_id" DataSourceID="SqlDataSource3"  HorizontalAlign="Center"  style="background-color:darkgray" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="sale_item_id" HeaderText="sale_item_id" InsertVisible="False" ReadOnly="True" SortExpression="sale_item_id" />
                <asp:BoundField DataField="sale_id" HeaderText="sale_id" SortExpression="sale_id" />
                <asp:BoundField DataField="serial_no" HeaderText="serial_no" SortExpression="serial_no" />
                <asp:BoundField DataField="service_id" HeaderText="service_id" SortExpression="service_id" />
                <asp:BoundField DataField="product_or_service" HeaderText="product_or_service" SortExpression="product_or_service" />
                <asp:BoundField DataField="product_or_service_name" HeaderText="product_or_service_name" SortExpression="product_or_service_name" />
                <asp:BoundField DataField="unit_price" HeaderText="unit_price" SortExpression="unit_price" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                <asp:BoundField DataField="vat" HeaderText="vat" SortExpression="vat" />
                <asp:BoundField DataField="subtotal" HeaderText="subtotal" SortExpression="subtotal" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GroupPmb14ConnectionString %>" SelectCommand="SELECT * FROM [SaleItems]"></asp:SqlDataSource>
    </div>

</asp:Content>
