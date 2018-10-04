<%-- 
    Document   : index
    Created on : 29 Sep, 2018, 3:21:58 PM
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
        <link rel="shortcut icon" href="image/Logo.png" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foodies</title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
       <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
       <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
       <link rel="stylesheet" type="text/css" href="css/home.css">
       <script src="home.js" type="text/javascript"></script>
       <script src="js/home.js" type="text/javascript"></script>
       <script>
$(document).ready(function(){
  var minDate = new Date();
  $("#depart").datepicker({
    showAnim: 'drop',
    numberOfMonth: 1,
    minDate: minDate,
    dateFormat:'dd/mm/yy',
    onClose:function(selectedDate){
      $('#return').datepicker("option","minDate",selectedDate);
    }
  });
});

</script>
       <style>
           .bg {
    background-image: url("image/bg2.jpg");
    height: 90%; 
    padding-top: 60px;
    padding-left: 50px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}
.bgimg1{
    background-image: url("image/salad4.jpg");
    height: 80%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}
.btn-11 {
      padding: 10px 20px;
      background-color: orange;
      color: #f1f1f1;
      font-weight: bold;
      border-radius: 8;
      transition: .2s;
      margin-top: 190px;
  }
  .btn-11:hover, .btn:focus {
      border: 1px solid #333;
      background-color: transparent;
      border: none;
      color: orange;
      font-size: 30px;
      font-weight: bold;
      text-transform: uppercase;
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
		        <li><a href="Afterlogin.jsp?email=${param.email}">HOME</a></li>
                        <li><a href="About.jsp?email=${param.email}">ABOUT US</a></li>
                        <li><a href="Menu.jsp?email=${param.email}">MENU</a></li>
                        <li><a href="#">CONTACT US</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
                                            <li><a href="ViewCart.jsp?email=${param.email}"><span style="font-size:20px; color: black;" class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
                                            <li><a href="index.jsp">SIGN OUT</a></li>
                                        </ul>
          
          
					
				</div>
			</div>
	
		</nav>
        
        
        <div class="bg">
    <a href="Menu.jsp?email=${param.email}"><button class="btn btn-11">I'Am Hungery</button></a>
    </div>
        <div id="COMBO" class="bg-1">
  <div class="container">
    <h3 class="text-center">TODAY SPECIAL COMBO</h3>
    <p class="text-center">Best combo you ever get.<br> Remember to order your combo!</p>
    
    
    <div class="row text-center">
        <c:forEach items="${Product}" var="x" end="2">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="${x.getImage()}" alt="Paris">
          <input type="hidden" value="${x.getId()}" />
          <p><strong>${x.getProductname()}</strong></p>
          <p>${x.getCategoryname()}</p><br>
          <a href="ViewSingleProduct.jsp?id=${x.getId()}&?email=${param.email}" class="btn btn-1">Add To Cart</a>
        </div>
      </div>
        </c:forEach> 
     
    </div>
  </div>
</div>
       
        <div class="container-fluid">
  <div class="bg-101">
   <div class="row" tex-center>
     <div class="col-sm-3" style="background-color:rgb(255,224,189);"><h2>When India Win, Kid Eat Free</h2>
     <p>Kid eat free the day after the India win. Some restriction apply.</p><br>
     <button class="btn-101" data-toggle="#" data-target="#">LEARN MORE</button>
     </div>
     <div class="col-sm-3" style="background-color:rgb(255,205,148);"><h2>Happy Hours at the Bar</h2>
      <p>&#x20B9; 300 full size appetizers* & great drinks specilals M-F 3-6 P.M & 8 P.M Close.</p><br>
      <button class="btn-101" data-toggle="#" data-target="#">LEARN MORE</button>
    </div>
     <div class="col-sm-3" style="background-color:rgb(255,224,189);"><h2>Take On Trivia</h2>
      <p>Compete every Thursday night to win pair of Red Sox ticket* or FoodHub Gift Card**9/13-10/11</p>
      <button class="btn-101" data-toggle="#" data-target="#">LEARN MORE</button>
     </div>
     <div class="col-sm-3" style="background-color:rgb(255,205,148);"><h2>Thank You!</h2>
<p>Thank you to everyone who donated and helped us raise over $200,000 to s FoodHub Funds.</p>
<button class="btn-101" data-toggle="#" data-target="#">LEARN MORE</button>
     </div>
   </div>
  </div>
</div>
        
        <div id="section1">
  <div class="container-fluid">
  <div class="row">
    <div class="col-sm-6"><img src="image/s1.webp" style="padding-left: 50px; padding-top: 70px;">
      <br><br><br>
     <img src="image/s4.webp" style="padding-left: 50px;">
     <h1 style="color: black; padding-left: 50px;padding-top: 25px; font-style: italic; font-size: 16px; font-weight: bold;">SPINACH LOVERS MONTH</h1>
     <h1 style="color:#DAA520; padding-left: 50px; padding-top: 10px; font-style: italic;">Spinach month is<br> finally here</h1>
     <p style="color: black;padding-left: 50px;padding-right: 70px; font-style: italic;">This is another great breakfast option and it only takes a few minutes to do. Just saute a cup or 2 of spinach in olive oil on the stove top and throw it in your omelette with other veggies or meat.</p>
    </div>
    <div class="col-sm-6"><h1 style="background-color: white;  font-style: italic; color:black; font-size: 16px; font-weight: bold;">OUR RESTAURANT</h1>
    <h1 style="color:#DAA520; letter-spacing:1px; font-style: italic;">Local fresh cuisine<br>for everyone</h1>
    <p style="color:black; font-style: italic;">Our Chefs offer you perfect cooking, best served dishes with fresh ingredients and old recipes. We have only carefully sourced and seasonal ingredients in our disposal to make rustic dishes. We provide you with daily self-made bread, sourdough pizza, roasted fish-meat-vegetables and many more.</p>
    <br><br>
    <img src="image/s2.webp">
    <br><br>
    <img src="image/s3.webp">
    </div>
  </div>
  <div class="row">
    <div class="col-sm-12">
      <img src="image/s5.webp" style="padding-left: 180px; padding-top: 50px;">
      <div class="text-block">
          <h1 style="font-size:20px;">GREENS JUST GOT FASTER!</h1>
    <p style="text-decoration: none;"><a href="">Order Online</a></p>
  </div>
    </div>
  </div>
</div>
</div>
        <div class="bgimg1">
            <div class="reserv">
    <h1>Reservations</h1>
  </div>
  <form action="" id="booking" method="post">
   <input type="text" name="date" id="depart" placeholder="Date">
   <select name="time" id="Time" required>
     <option name="time" value="">Time</option>
     <option name="time" value="1">12:00 AM</option>
     <option name="time" value="2">12:15 Am</option>
     <option name="time" value="3">12:30 AM</option>
     <option name="time" value="4">12:45 AM</option>
     <option name="time" value="5">01:00 AM</option>
     <option name="time" value="6">01:15 AM</option>
     <option name="time" value="7">01:30 AM</option>
     <option name="time" value="8">01:45 AM</option>
     <option name="time" value="9">02:00 AM</option>
     <option name="time" value="10">02:15 AM</option>
     <option name="time" value="11">02:45 AM</option>
     <option name="time" value="12">03:00 AM</option>
     <option name="time" value="13">03:15 AM</option>
     <option name="time" value="14">03:30 AM</option>
     <option name="time" value="15">03:45 AM</option>
     <option name="time" value="16">04:00 AM</option>
     <option name="time" value="17">04:15 AM</option>
     <option name="time" value="18">04:30 AM</option>
     <option name="time" value="19">04:45 AM</option>
     <option name="time" value="20">05:00 AM</option>
     <option name="time" value="21">05:15 AM</option>
     <option name="time" value="22">05:30 AM</option>
     <option name="time" value="23">05:45 AM</option>
     <option name="time" value="24">06:00 AM</option>
     <option name="time" value="25">06:15 AM</option>
     <option name="time" value="26">06:30 AM</option>
     <option name="time" value="27">06:45 AM</option>
     <option name="time" value="28">07:00 AM</option>
     <option name="time" value="29">07:15 AM</option>
     <option name="time" value="30">07:30 AM</option>
     <option name="time" value="31">07:45 AM</option>
     <option name="time" value="32">08:00 AM</option>
     <option name="time" value="33">08:15 AM</option>
     <option name="time" value="34">08:30 AM</option>
     <option name="time" value="35">08:45 AM</option>
     <option name="time" value="36">09:00 AM</option>
     <option name="time" value="37">09:15 AM</option>
     <option name="time" value="38">09:30 AM</option>
     <option name="time" value="39">09:45 AM</option>
     <option name="time" value="40">10:00 AM</option>
     <option name="time" value="41">10:15 AM</option>
     <option name="time" value="42">10:30 AM</option>
     <option name="time" value="43">10:45 AM</option>
     <option name="time" value="44">11:00 AM</option>
     <option name="time" value="45">11:15 AM</option>
     <option name="time" value="46">11:30 AM</option>
     <option name="time" value="47">11:45 AM</option>
     <option name="time" value="48">12:00 PM</option>
      <option name="time" value="49">12:15 PM</option>
     <option name="time" value="50">12:30 PM</option>
     <option name="time" value="51">12:45 PM</option>
     <option name="time" value="52">01:00 PM</option>
     <option name="time" value="53">01:15 PM</option>
     <option name="time" value="54">01:30 PM</option>
     <option name="time" value="55">01:45 PM</option>
     <option name="time" value="56">02:00 PM</option>
     <option name="time" value="57">02:15 PM</option>
     <option name="time" value="58">02:45 PM</option>
     <option name="time" value="59">03:00 PM</option>
     <option name="time" value="60">03:15 PM</option>
     <option name="time" value="61">03:30 PM</option>
     <option name="time" value="62">03:45 PM</option>
     <option name="time" value="63">04:00 PM</option>
     <option name="time" value="64">04:15 PM</option>
     <option name="time" value="65">04:30 PM</option>
     <option name="time" value="66">04:45 PM</option>
     <option name="time" value="67">05:00 PM</option>
     <option name="time" value="68">05:15 PM</option>
     <option name="time" value="69">05:30 PM</option>
     <option name="time" value="70">05:45 PM</option>
     <option name="time" value="71">06:00 PM</option>
     <option name="time" value="72">06:15 PM</option>
     <option name="time" value="73">06:30 PM</option>
     <option name="time" value="74">06:45 PM</option>
     <option name="time" value="75">07:00 PM</option>
     <option name="time" value="76">07:15 PM</option>
     <option name="time" value="77">07:30 PM</option>
     <option name="time" value="78">07:45 PM</option>
     <option name="time" value="79">08:00 PM</option>
     <option name="time" value="80">08:15 PM</option>
     <option name="time" value="81">08:30 PM</option>
     <option name="time" value="82">08:45 PM</option>
     <option name="time" value="83">09:00 PM</option>
     <option name="time" value="84">09:15 PM</option>
     <option name="time" value="85">09:30 PM</option>
     <option name="time" value="86">09:45 PM</option>
     <option name="time" value="87">10:00 PM</option>
     <option name="time" value="88">10:15 PM</option>
     <option name="time" value="89">10:30 PM</option>
     <option name="time" value="90">10:45 PM</option>
     <option name="time" value="91">11:00 PM</option>
     <option name="time" value="92">11:15 PM</option>
     <option name="time" value="93">11:30 PM</option>
     <option name="time" value="94">11:45 PM</option>
   </select>
   <select id="Size" required>
     <optionTime</option>
     <option name="size" value="">Party Size</option>
     <option name="size" value="1">1 Person</option>
     <option name="size" value="2">2 Person</option>
     <option name="size" value="3">3 Person</option>
     <option name="size" value="4">4 Person</option>
     <option name="size" value="5">5 Person</option>
     <option name="size" value="6">6 Person</option>
   </select>
   <input type="submit" class="btn btn-booking" value="Book">
  </form>
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

