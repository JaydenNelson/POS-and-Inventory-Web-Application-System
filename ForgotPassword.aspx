<%@ Page Title="ForgotPassword" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="m4_template.ForgotPassword" %>

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
      <div class="graident-background">
        <h2><%: Title %>.</h2>

        <div class="row">
            <div class="col-md-8">
                <section id="loginForm">
                    <div class="form-horizontal">
                        <hr />
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="text-danger" ErrorMessage="The email field is required." />
                            </div>
                        </div>
                        <div class="form-group" id="txtemail">
                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                            </div>
                        </div>
                        <div class="form-group" id="txtemail">
                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Confirm Password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button runat="server" Text="Change Password" CssClass="btn btn-default" OnClick="Unnamed7_Click" />
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            
        </div>
    </div>
</asp:Content>
