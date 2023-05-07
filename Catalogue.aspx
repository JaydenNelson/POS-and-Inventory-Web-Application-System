<%@ Page Title="Catalogue" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="m4_template.Catalogue" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>

    * {
  box-sizing: border-box;
}



/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 8px -16px;
}

/* Add padding BETWEEN each column (if you want) */
.row,
.row > .column {
  padding: 8px;
            height: 557px;
        }

/* Create four equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
}

/* Clear floats after rows */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: dimgrey;
  padding: 10px;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 900px) {
  .column {
    width: 50%;
  }
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  background-color: darkgrey;
            height: 500px;
        }

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}

</style>

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
                        <a runat="server" onclick="loginCheck()" href="~/ShoppingCart" >Cart</a>
                        <a runat="server" href="~/Login">Login</a>
                    
           
       </div>

   
    <!-- Portfolio Gallery Grid -->
<div class="row">

   <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Nikon XLT.jpg" alt="Nikon XLT" style="width:100%;height:300px">
  <h2>Nikon XLT</h2>
  <p class="price">R7000 </p>
  <p>20mp 20x zoom portable camera</p>       
  <p><asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Nikon Camera.jpg" alt="Nikon Camera" style="width:100%;height:300px">
  <h2>Nikon Camera</h2>
  <p class="price">R150 </p>
  <p>5mp disposable camera 10 reels</p>
  <p><asp:Button ID="Button2" runat="server" Text="Add to Cart" OnClick="Button2_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Black Tripod.jpg" alt="Black Tripod" style="width:100%;height:300px">
  <h2>Black Tripod</h2>
  <p class="price">R50 </p>
  <p>Black tripod stand 13cm</p>
  <p><asp:Button ID="Button3" runat="server" Text="Add to Cart" OnClick="Button3_Click" /></p>
</div>
    </div>
  </div>

    <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Canon Camera.jpg" alt="Canon Camera" style="width:100%;height:300px">
  <h2>Canon Camera</h2>
  <p class="price">R15000</p>
  <p>50x zoom 20mp black camera with autofocus</p>
  <p><asp:Button ID="Button4" runat="server" Text="Add to Cart" OnClick="Button4_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Grey Tripod.jpg" alt="Grey Tripod" style="width:100%">
  <h2>Grey Tripod</h2>
  <p class="price">R300</p>
  <p>Tripod for Nikon camera</p>
  <p><asp:Button ID="Button5" runat="server" Text="Add to Cart" OnClick="Button5_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/SD Card.jpg" alt="SD Card" style="width:100%;height:300px">
  <h2>SD Card</h2>
  <p class="price">R150</p>
  <p>32GB Sandisk SD Card</p>
  <p><asp:Button ID="Button6" runat="server" Text="Add to Cart" OnClick="Button6_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/USB.jpg" alt="USB" style="width:100%">
  <h2>USB</h2>
  <p class="price">R80 </p>
  <p>16gb Sandisk USB</p>
  <p><asp:Button ID="Button7" runat="server" Text="Add to Cart" OnClick="Button7_Click" /></p>
</div>
    </div>
  </div>

    <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/A5 Frame.jpg" alt="A5 Frame" style="width:100%;height:300px">
  <h2>A5 Frame</h2>
  <p class="price">R50</p>
  <p>wooden A5 frame</p>
  <p><asp:Button ID="Button8" runat="server" Text="Add to Cart" OnClick="Button8_Click" /></p>
</div>
    </div>
  </div>
</div>

    <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Camera bag.jpg" alt="Camera bag" style="width:100%;height:300px">
  <h2>Camera bag</h2>
  <p class="price">R70 </p>
  <p>Brown satchel bag for canon camera</p>
  <p><asp:Button ID="Button9" runat="server" Text="Add to Cart" OnClick="Button9_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Canon Camera 100mp.jpg" alt="Canon Camera" style="width:100%;height:300px">
  <h2>Canon Camera</h2>
  <p class="price">R7000 </p>
  <p>100mp 10x zoom camera</p>
  <p><asp:Button ID="Button10" runat="server" Text="Add to Cart" OnClick="Button10_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/DSLR.jpg" alt="DSLR" style="width:100%">
  <h2>DSLR</h2>
  <p class="price">R15000 </p>
  <p>20mp 20x zoom portable camera</p>
  <p><asp:Button ID="Button11" runat="server" Text="Add to Cart" OnClick="Button11_Click" /></p>
</div>
    </div>
  </div>

    <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/A1 Frame.jpg" alt="A1 Frame" style="width:100%">
  <h2>A1 Frame</h2>
  <p class="price">R400</p>
  <p>Dark Grey A1 Frame</p>
  <p><asp:Button ID="Button12" runat="server" Text="Add to Cart" OnClick="Button12_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/USB 8gb.jpg" alt="USB" style="width:100%">
  <h2>USB</h2>
  <p class="price">R40</p>
  <p>8gb Sandisk USB</p>
  <p><asp:Button ID="Button13" runat="server" Text="Add to Cart" OnClick="Button13_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/A3 Frame.jpg" alt="A3 Frame" style="width:100%">
  <h2>A3 Frame</h2>
  <p class="price">R240</p>
  <p>Wooden A3 Frame</p>
  <p><asp:Button ID="Button14" runat="server" Text="Add to Cart" OnClick="Button14_Click" /></p>
</div>
    </div>
  </div>

     <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Frame.jpg" alt="Frame" style="width:100%;height:300px">
  <h2>Frame</h2>
  <p class="price">R80 </p>
  <p>Frame</p>
  <p><asp:Button ID="Button15" runat="server" Text="Add to Cart" OnClick="Button15_Click" /></p>
</div>
    </div>
  </div>

    <div class="column">
    <div class="content">
     <div class="card">
  <img src="images/Film.jpg" alt="Film" style="width:100%">
  <h2>Film</h2>
  <p class="price">R15</p>
  <p>Film</p>
  <p><asp:Button ID="Button16" runat="server" Text="Add to Cart" OnClick="Button16_Click" /></p>
</div>
    </div>
  </div>


</asp:Content>
