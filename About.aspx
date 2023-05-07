<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="m4_template.About" %>

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
    <!--
    <header>
        <h1>About Us</h1>
        <link rel="icon" type="image/x-con" href="/images/FFlogo2.jpg">
    </header>
    -->

    <header>
        <h1 style="text-align : center; color:lavender;">FOTOFIRST: PHOTOGRAPHIC AND DIGITAL PRINTING PROFESSIONALS</h1>
    </header>

    <div class="banner">
        <div>
            
            <!--img src="/images/AboutUs/slider1.jpg" alt="Memory"-->
            <!--img src="/images/AboutUs/slider2.jpg" alt="Design"-->
        </div>
    </div> <!--banner-->

    <div class="gradient-backgorund">
        <section id="aboutForm">
            <div class="form-horizontal">

                <hr />
                <div class="h2">Our Mission...</div>
                <hr />

                <div class="p">We strive to provide our customers with products and services of the highest calibre. 
                    Customer satisfaction is our number one goal. We are striving towards rejuvenating the printing industry
                    one product and customer at a time. Quick, fast and affordable professionalism at your finger tips.

                </div>

                <hr />
                <div class="h2">Products and Services we Offer...</div>
                <hr />
                
                <!--Column1-->
                <div class="products">
                    <div class="col">
                        <div class="banner2">
                            <div class="h3">Camera and ITS Equipment</div>
                            <img src="/images/AboutUs/camera_icon.png" alt="Camera"/>
                            <input id="btn_shopnow" type="button" value="Shop Now" onclick="shopnow()" class="btn"/>                
                            <script>
                                function shopnow() {
                                    location.replace("Catalogue.aspx");
                                }
                            </script><!--script for Shop Now-->
                        </div> <!--banner2-->
                    </div> <!--col-->
                    
                    <!--Column1-->
                    <div class="col">
                        <div class="banner2">
                            <div class="h3">Photographic and Digital Prints</div>
                            <img src="/images/AboutUs/photo_icon.png" alt="Printer"/>
                            <input id="btn_ordernow" type="button" value="Order Now" onclick="ordernow()" class="btn"/>
                            <script>
                                function ordernow() {
                                    location.replace("CustomerOrders.aspx")
                                }
                            </script><!--script for Order Now-->
                        </div> <!--banner2-->
                    </div> <!--col-->
                    
                    <div class="col">
                        <div class="banner2">
                            <div class="h3">Design Consultations</div>
                            <img src="/images/AboutUs/design_icon.png" alt="Printer"/>
                            <input id="btn_booknow" type="button" value="Book Now" onclick="booknow()" class="btn"/>
                            <script>
                                function booknow() {
                                    location.replace("Booking.aspx")
                                }
                            </script><!--script for Order Now-->
                        </div> <!--banner2-->
                    </div> <!--col-->
                    
                    <div class="col">
                        <div class="banner2">
                            <div class="h3">Photographic Frames</div>
                            <img src="/images/AboutUs/frame_icon.png" alt="Printer"/>
                            <input id="btn_shopnow2" type="button" value="Shop Now" onclick="shopnow()" class="btn"/>
                            <script>
                                function shopnow() {
                                    location.replace("Catalogue.aspx")
                                }
                            </script><!--script for Order Now-->
                        </div> <!--banner2-->
                    </div> <!--col-->
                </div> <!--products-->
    
                <!--ul style="color:lavender; text-align:center;">
                    <li>Camera and Photographic Equipment</li>
                    <li>Photographic and Digital Prints:</li>
                    <dd>- ID</dd>
                    <dd>- VISA</dd>
                    <dd>- Passport</dd>
                </ul-->

            </div> <!--form-horizontal-->
        </section>
    </div> <!--gradient-background-->


    <!--footer>

        <div class="col">
           <div class="heading">Products</div>
        </div>

        <div class="col">
            <div class="heading">Contact Information</div>
        </div>

    </footer-->


    <!--CSS-->
    <style>  
        .h2{
            text-align: center;
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            font-size:50px;
            color:lavender;
        }
        .h3{
            text-align:center;
            font-size: 15px;
            background-color:dimgrey;
            padding: 16px 16px;
            color:black;
        }
        .p{
            color:lavender;
            text-align:center;
        }

        .banner{
            background-image:
                linear-gradient(to top right, rgba(228,221,221, 0.50) 10%, rgba(0,0,0, 0.80 ) 90%),
                url(https://www.club790businessdirectory.co.za/wp-content/uploads/2020/10/Slogo-1.jpg);
            background-position: center;
            background-attachment: scroll;
            background-repeat: no-repeat;
            background-color:white;
            height:300px;
        }

        .banner2{
            position:relative;
            width:50%;
        }
        .banner2 img{
            width:100%;
            height:auto;
            padding: 5px 5px;
        }
        .banner2 .btn{
            position:relative;
            margin-top:25px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            background-color:lightgreen;
            color:black;
            font-size: 16px;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
        }
        .btn:hover{
            color:white;
            background-color:green;
        }

        
        .images{
            padding: 25px 2px;
            opacity: 1;
            display: block;
            width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
        }
        .centred{
            transition: .5s ease;
            opacity: 0;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            text-align: center;
        }
        .banner2:hover .img{
            opacity: 0.3;
        }
        .banner2:hover .centred{
            opacity: 1;
        }

        .heading{grid-area:menu;}

        .col{
            float:left;
            width: 25%;
            padding: 10px;
            height: 300px; 
        }

        .banner2:after{
            content: "";
            display: table;
            clear: both;
        }
    </style>
    <!--CSS-->

</asp:Content>
