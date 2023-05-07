<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="m4_template._Default" %>

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
                        <%--Navbar end  --%>






    <div class="jumbotron" >
        <h1 style="color: white;">Foto First</h1>
        <p class="lead" style="color: white;">Insprirational quote here </p>
          
        <p><a href="https://www.youtube.com/watch?v=fcZXfoB2f70&ab_channel=RickrollNoads" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>




<section>
 
  <articlelr>
    <h1>Products </h1>
    <p>Fotofirst brings you products of the highest quality. We bring you these products from only the most reliable and affordable suppliers and therefore our prices are always the best for the quality we offer.</p>
    
  </articlelr >
  
  <articlepl>
    <h1>Guaranteed! </h1>
    <p>Here are Fotofirst, we can guarantee that our products are the best. Over the long distance that we have come since we have opened, we have never received anything lower than a 4 star rating on our products.</p>
    </articlepl>


<div >
   <!-- Slideshow container -->
<div class="slideshow-container" >

  <!-- Full-width images with number and caption text -->
  <div class="mySlides">
 
    <img src="images/camera 1.jpg" style="width:100%">
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides">

    <img src="images/camera 2.png" style="width:100%">
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides">
  
    <img src="images/camera 3.jpg" style="width:100%">
    <div class="text">Caption Three</div>
  </div>

 
</div>
    </div>
<br>
<script>

    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let j;
        let slides = document.getElementsByClassName("mySlides");
        for (j = 0; j < slides.length; j++) {
            slides[j].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }

</script>
    
    



    <articlell>
    <h1>Location</h1>
    <p>Fotofirst has over 28 stores across the nation. Therefore there will always be a Fotofirst close to you to fulfill your photography and printing needs</p>
     </articlell>
  
  <articlepr>
    <h1>Safety</h1>
    <p>Here at Fotofirst we care about your safety. All pictures or documents are used for the sole purpose of providing a service. These documents and images are kept securely in our drives.</p>
     </articlepr>

</section>

    

   




    <div class="row" >
        <div class="col-md-4">
            <h2>Youtube</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Instagram</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Twitter</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
