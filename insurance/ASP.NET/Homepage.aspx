<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <title></title>

    <style>
    /* Position the navbar container inside the image */
    .container {
  position: absolute;
  margin: 20px;
  width: auto;
}

/* The navbar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Navbar links */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
 #Button1,#Button2,#Button3,#Button4[type=submit] {
             
             padding: 12px 20px;
             border: none;
             cursor: pointer; 
      
         }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel" data-interval:"500" >
  
          <div class="topnav">
          <asp:Button ID="Button1" runat="server" Text="Home"  BorderColor="#3333CC" Font-Bold="True"  />  
           &nbsp, &nbsp, &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; , &nbsp<asp:Button ID="Button2" runat="server" Text="Customer" Font-Bold="True" OnClick="Button2_Click1" />
             
              &nbsp;, &nbsp;,&nbsp;,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" href="Contact us.aspx" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="White">Contact Us</asp:HyperLink>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
        <div class="carousel slide">
                
            <div class="carousel-inner">
                <div class="carousel-item active"  style="height:50%;">
                    <img src="C:/Workarea/insurance/images/image8.jpg" class="d-block w-100" alt="..." width="50%" height="650px">
                </div>
                <div class="carousel-item">
                    <img src="C:/Workarea/insurance/images/image1.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
                </div>
                <div class="carousel-item" >
                    <img src="C:/Workarea/insurance/images/image2.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
                </div>
                <div class="carousel-item">
                    <img src="C:/Workarea/insurance/images/image6.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
                </div>
                <div class="carousel-item">
                    <img src="C:/Workarea/insurance/images/image5.jpg" class="d-block w-100" alt="..." width="100%" height="650px">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
           
            </div>   
              
    </div>

       <h1 style="box-sizing: border-box; color: rgb(3, 3, 58); text-align: center; font-style:normal; font-weight: 400;"><br>
        <b>Peace of mind on the water.</b></h1> 
      </div>
    <div class="row d-flex justify-content-between">
        <div class="col-md-4 col-lg-3 p-4">
           
            <h4 style="color: rgb(47, 47, 160); font-size: 80; font-weight: 200;">
                 <b >What is Marine Insurance? &nbsp;</b> </h4>
            <p > 
                <b>Marine insurance covers the losses or damages caused to ships, 
                terminals and any transport or cargo by which goods are transferred, 
                acquired, or held between different points of origin and final destination. 
                The term may also apply to inland marine but it is usually used in the context 
                of ocean marine insurance. Marine insurance is a haven for transporters and 
                shipping corporations because it helps to lower the aspect of financial loss 
                due to cargo loss</b></p>
            <p > <br /><br />
             

       <b>Click <asp:HyperLink ID="HyperLink2" runat="server" href="Marineinsdetails.aspx">Here</asp:HyperLink> to know more about Marine Insurance </b>
       </p> </div>

        <div class="col-md-4 col-lg-3 p-4">
            <h4 style="color: rgb(47, 47, 160); font-size: 80; font-weight: 200;"> <b>Different Types of Marine Insurance Policies</b> </h4>
            <b> <ul><h4 style="color: rgb(173, 63, 63);"><b>Hull Insurance</b></h4></ul>
                <li>Body or body frame of ship and its machinery</li>
                <li>Cover the risk of vessel during its construction</li><br>
        
                  <ul><h4  style="color: rgb(173, 63, 63);"><b>cargo Insurance</b></h4></ul>
                  <li>Good or commodities</li>
                <li>Particular time</li>
                <li>Particular voyage</li>
        </b><br><br>
            </div>
        <div class="col-md-4 col-lg-3 p-4">
            <h4 style="color: rgb(47, 47, 160); font-size:80; font-weight: 200;"> <b>Advantages of Marine insurance Policies</b> </h4>
            <b> <p>The most important advantage of having an appropriate and comprehensive 
                marine insurance online plan is that it makes sure total protection and 
                liability against the following</p>
                     •  Theft or hijack of vessel<br>
                     •  Collision.<br>
                     •  Mistakes in transportation (inappropriate handling).<br>
                     •  Accident while in convey (sinking or overturning).<br>
                     •  Theft of onboard cargo.<br>
                     •  Variations in temperature causing complications.<br>
                     •  Pollution risks.<br>
                     •  Compensation for illness, injury or death of persons onboard the vessel.<br />
            <br>
            </b>
        </div>
    </div>
    </form>
     <div class="jumbotron " style="margin-bottom:0;">
        <div class="row">
            <div class="col-sm-4 " style="text-align:center;">
                <h3>Marine Insurance</h3>
                <p>9th cross,Devanahalli,<br />Pujanhalli<br />Airport Road<br />Bengaluru<br />560010</p>
            </div>

            <div class="col-sm-4 " style="text-align:center;">
                <h3>Contact Details</h3>
                <p>9945391228<br />sudhadeshpande7@gmail.com</p>

            </div>
            <div class="col-sm-3 " style="text-align:center;">
            
                <a href="#"><i class="fa fa-lg fa-facebook"></i></a>Facebook<br />
                <a href="#"><i class="fa fa-lg fa-twitter"></i></a>Twitter<br />
                <a href="#"><i class="fa fa-lg fa-google-plus"></i></a>Google<br />
                <a href="#"><i class="fa fa-lg fa-linkedin"></i></a>Linkdin<br />


            </div>
        </div>
    </div>
</body>
</html>
