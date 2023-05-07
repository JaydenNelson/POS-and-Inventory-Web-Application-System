<%@ Page Title="CatalogueServices" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CatalogueServices.aspx.cs" Inherits="m4_template.CatalogueServices" %>

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
    <br><br><br>
    <div>
        <center>
            <table style="background-color:darkgray">
                <tr style="color: white"> 
                    <td style="padding:10px">Service Name</td>
                    <td style="padding:10px">Service Description</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Design(15 min)</td>
                    <td style="padding:10px">design of pictures for a duration of 15min</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Design(30 min)</td>
                    <td style="padding:10px">design of pictures for a duration of 30 min</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Design 60 min</td>
                    <td style="padding:10px">design of picture for the duration of 60min</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Printing</td>
                    <td style="padding:10px">printing onto paper via the use of a usb</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Emailing</td>
                    <td style="padding:10px">send emails using our computers</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Photo Copying</td>
                    <td style="padding:10px">photocopying service R2 per page</td>
                </tr>
                <tr> 
                    <td style="padding:10px">Faxing</td>
                    <td style="padding:10px">faxing service </td>
                </tr>
             </table>
        </center>
    </div>
    <br><br><br>
</asp:Content>
