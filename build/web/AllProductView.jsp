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
        <title>Products</title>
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
      height: 385px;
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
</style>
    </head>
    <body>
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
          <p><strong>${x.getProductname()}</strong></p>
          <p>${x.getCategoryname()}</p><br>
          <a href="ViewSingleProduct.jsp?id=${x.getId()}" class="btn btn-1">Add To Cart</a>
        </div>
      </div>
        </c:forEach> 
     
    </div>
  </div>
</div>
    </body>
</html>
