<%-- 
    Document   : order
    Created on : 30 Sep, 2018, 4:22:13 PM
    Author     : rajku
--%>

<%@page import="model.Category" %>
<%@page import="dao.CategoryDAO" %>
<%@page import="impl.CategoryDAOImpl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
CategoryDAO udao = new CategoryDAOImpl();

request.setAttribute("Category", udao.getCategory());
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Online|Foodies</title>
        <link rel="shortcut icon" href="image/Logo.png" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
       <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
       <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
       <link rel="stylesheet" type="text/css" href="css/ordercss.css">
       <script type="text/javascript">
       	function myFunction(x) {
    x.classList.toggle("change");
 }
       </script>
       <style>
           .container {
  position: relative;
  margin-top: 50px;
  width: 440px;
  height: 350px;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0);
  transition: background 0.5s ease;
}
.container:hover .overlay {
  display: block;
  background: #FFFF99;
  text-align: center;
}

.img1 {
  position: absolute;
  width: 400px;
  height: 350px;
  left: 0;
}

.title {
  position: absolute;
  width: 500px;
  left: 0;
  top: 120px;
  font-weight: 700;
  font-size: 30px;
  text-align: center;
  text-transform: uppercase;
  color: white;
  z-index: 1;
  transition: top .5s ease;
}

.container:hover .title {
  top: 90px;
  color: black;
}

.button {
  position: absolute;
  width: 500px;
  left:0;
  top: 180px;
  text-align: center;
  opacity: 0;
  transition: opacity .35s ease;
}

.button a {
  width: 200px;
  padding: 12px 48px;
  text-align: center;
  color: white;
  border: solid 2px white;
  z-index: 1;
}

.container:hover .button {
  opacity: 1;
}


       </style>
    </head>
    <body style="background-color: #2d2d30; color: white;">
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
                        <li><a href="#">ABOUT US</a></li>
                        <li><a href="#l">ORDER</a></li>
                        <li><a href="#">CONTACT US</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
                                            <li></li>
                                        </ul>
          
					
				</div>
			</div>
	
		</nav>
        <br><br><br>
        <div class="bg-1">
        <h1 style="color: white; text-align: center; font-weight: bold; font-size: 55px; margin-top: -15px;">Online Order Menu</h1>
        <p style="color:white; text-align: center; font-size: 15px; font-weight: bold">Price may vary In <u>Delhi & Delhi NCR</u></p>
        <div class="container-fluid">
            <div class="row">
                 <c:forEach items="${Category}" var="x">
                     <a href="AllProductView.jsp?categoryname=${x.getCategoryname()}">
                <div class="col-sm-4">
                    <div class="container">
                        <img class="img1" src="${x.getImage()}" alt="" />
                        <p class="title">${x.getCategoryname()}</p>
  <div class="overlay"></div>
</div>
                </div>
                     </a>
                 </c:forEach>
            </div>
            
        </div>
        
        </div>
        <br>
        <footer>
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-6">
            <form action="" method="post">
   <input type="email" name="emailsub" class="input-sub" placeholder="Email Address"><br>
   <button class="btn btn-sub">Subscribe Now</button>
 </form>
          </div>
          <div class="col-sm-6">
            <div class="footerp"><p>Copyright © 2018 . All Content Reseverd <a href="#" data-toggle="tooltip" title="Visit FoodHub">www.FoodHub.com</a></p></div>
            <span class="fa fa-facebook" style="color: white; font-size: 25px; padding-left: 120px;" title="facebook">
            <span class="fa fa-twitter" style="color: white; font-size: 25px; padding-left: 15px;" title="twitter">
            <span class="fa fa-instagram" style="color: white; font-size: 25px; padding-left: 15px;" title="instagram">
            <span class="fa fa-reddit" style="color: white; font-size: 25px; padding-left: 15px;" title="reddit">
          </div>
        </div>
      </div>
</footer>
    </body>
</html>
