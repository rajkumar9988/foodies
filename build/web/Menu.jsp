<%-- 
    Document   : AllProductView
    Created on : 22 Sep, 2018, 5:46:46 PM
    Author     : rajku
--%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page import="impl.ProductDAOImpl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <%
    ProductDAO udao = new ProductDAOImpl();

    request.setAttribute("Product", udao.getProduct());
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="image/Logo.png" />
        <title>Menu</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
    
    .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
    .btn-1 {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn-1:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .thumbnail{
      width:350px;
      height: 400px;
  }
  .thumbnail img{
      width:350px;
      height: 250px;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  img{
      
  }
  footer{
  height: 200px;
  width: 100%;
  background-color: #AC802F;
}
.footerp{
  color: white;
  text-align: center;
  padding-right: 10px;
  margin-top: 23px;
}
footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: black;
      text-decoration: none;
  }  
  
  .input-sub{
  width: 300px;
  height: 40px;
  color: white;
  font-weight: bold;
  background-color:#DCAA4D;
  margin-bottom: 10px;
  margin-top: -50px;
  margin-left: 150px; 
  border-width: 0px;
  border-color: #C9B691;
}
.btn-sub{
   width: 300px;
   
  margin-left: 150px;
  background-color: white;
  color: black;
  font-weight: bold;
  height: 40px; 
}
#bar1, #bar2, #bar3 {
    width: 30px;
    height: 5px;
    background-color: #333;
    margin: 6px 0;
    transition: 0.4s;
    margin-bottom: 5px;
}

.change #bar1 {
    -webkit-transform: rotate(-45deg) translate(-9px, 6px);
    transform: rotate(-45deg) translate(-9px, 6px);
}

.change #bar2 {opacity: 0;}

.change #bar3 {
    -webkit-transform: rotate(45deg) translate(-8px, -8px);
    transform: rotate(45deg) translate(-8px, -8px);
}
.navbar-custom{
  background-color: white;
  display: block;
  letter-spacing: 3px;
  border-radius: 0px; padding: 2px;
  font-size: 15px;
  margin-bottom: 0;
  size: 50px;
}
.navbar-custom .navbar-nav1>li>a{
  color: black;
  font-weight: bold;
  margin-left: 13px;
  display: block;
  text-transform: uppercase;
}
div.navbar-nav2 a:before, div.navbar-nav2 a:after{
  position: absolute;
    left: 0px;
    width: 100%;
    height: 2px;
    background: orange;
    content: "";
    opacity: 0;
    transition: all 0.3s;
}
div.navbar-nav2 a:before
{
    top: 0px;
    transform: translateY(10px);
}

div.navbar-nav2 a:after
{
    bottom: 0px;
    transform: translateY(-10px);
}

div.navbar-nav2 a:hover:before, div.navbar-nav2 a:hover:after
{
    opacity: 1;
    transform: translateY(0px);
}

.navbar-brand{
  padding-top: 0px;
}
.navbar-brand1{
 display: none;
}
#login-dp{
  min-width: 320px;
  padding: 14px 14px 0;
  overflow: hidden;
  background-color: rgba(255,255,255,.8);
  color: black;
  font-weight: bold;
}
#login-dp .help{

}
#login-dp .bottom{
  background-color: inherit;
  border-top: 1px solid #ddd;
  clear: both;
  padding:14px;
}
#login-dp .help-block{
    font-size:12px;   
}
#login-dp .form-group {
    margin-bottom: 10px;
}
.btn-fb{
     color: #fff;
    background-color:#3b5998;
}
.btn-fb:hover{
   color: #fff;
    background-color:#496ebc;
}
.btn-gm{
  color: #fff;
    background-color:#DD4B39;
}
.btn-gm:hover{
  color: #fff;
    background-color:#FF0000;
}
#login-dp .social-buttons{
     margin: 12px 0;
}
#login-dp .social-buttons a{
     width: 48%
}
@media(max-width:600px){
  .navbar-brand{
  padding-top: 0px;
  display: none;
}
.navbar-brand1{
  display: block;
}
    #login-dp{
        background-color: inherit;
        color: #fff;
    }
    #login-dp .bottom{
        background-color: inherit;
        border-top:0 none;
    }

    #myNavbar {
  background-color:white;
  top: 10;
  right: 0;
  left: 0;
  min-height: 100%;
  padding-top: 30px;
  text-align:center;
}
.checkbox{
  color: black;
}
.bottom{
  color: black;
}
#col1{
  padding-top: 1px;
  padding-bottom: 4px;
}
}
</style>
    </head>
    <body>
        <nav class="navbar navbar-custom navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" onclick="myFunction(this)">
		              <div class="icon-bar" id="bar1"></div>
                      <div class="icon-bar" id="bar2"></div>
                      <div class="icon-bar" id="bar3"></div>  
					</button>
					<a class="navbar-brand" href="#"><img src="image/Logo.png"></a>
					<a class="navbar-brand1" href="#"><img src="image/d1.png"></a>
				</div>
				<div class="collapse navbar-nav2 navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-nav1  navbar-left">
						            <li><a href="index.jsp">HOME</a></li>
                        <li><a href="About.jsp">ABOUT US</a></li>
                        <li><a href="Menu.jsp">MENU</a></li>
                        <li><a href="Contact.jsp">CONTACT US</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
                                            <li><a href="PlaceOrder.jsp?email=${param.email}"><span style="font-size:20px; color: black;" class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
                                        </ul>
          
          
					
				</div>
			</div>
	
		</nav>
        <br><br>
        <div id="COMBO" class="bg-1">
  <div class="container">
    <h3 class="text-center">TODAY SPECIAL MENU</h3>
    <p class="text-center">Best combo you ever get.<br> Remember to order your combo!</p>
    
    
    <div class="row text-center">
        <c:forEach items="${Product}" var="x">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${x.getImage()}" alt="Paris">
          <input type="hidden" value="${x.getId()}" />
          <p><strong style="color:black;">${x.getProductname()}</strong></p>
          <p style="color:black;">&#8377; ${x.getPrice()}</p><br>
          <a href="ViewSingleProduct.jsp?id=${x.getId()}"><button class="btn-1">ADD TO CART</button></a>
        </div>
      </div>
        </c:forEach> 
     
    </div>
  </div>
</div>
         <footer>
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
              <form action="" method="post"><br>
                  <label style="color:white;margin-left: 150px;"><h3>Subscribe Newsletter.</h3></label>
                  <input type="email" name="emailsub" class="input-sub" placeholder="Email Address">
   <button class="btn btn-sub">Subscribe Now</button>
 </form>
          </div>
          <div class="col-sm-6">
            <div class="footerp"><p>Copyright © 2018 . All Content Reseverd <a href="#" data-toggle="tooltip" title="Visit FoodHub">www.FoodHub.com</a></p></div>
            <span class="fa fa-facebook" style="color: white; font-size: 25px; padding-left: 120px;" title="facebook">
            <span class="fa fa-twitter" style="color: white; font-size: 25px; padding-left: 15px;" title="twitter">
            <span class="fa fa-instagram" style="color: white; font-size: 25px; padding-left: 15px;" title="instagram"
          </div>
        </div>
      </div>
        </div>
</footer>
<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
}
        )
</script>
    </body>
</html>
