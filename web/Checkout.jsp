<%-- 
    Document   : Checkout
    Created on : 25 Sep, 2018, 2:32:54 PM
    Author     : rajku
--%>

<%@page import="impl.CartDAOImpl"%>
<%@page import="dao.CartDAO"%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page import="impl.ProductDAOImpl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    CartDAO cdao = new CartDAOImpl();

    String email = request.getParameter("email");
    
    if( email != null ) 
        request.setAttribute("cartItems", cdao.getCart( email ));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <style>
                table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
    padding-right: 10px;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

            </style>
    </head>
    <body style="margin:15px;">
       <table class="table table-striped">
  <tr>
      <th colspan="6"><h1 style=" margin-top: -10px; margin-bottom: -10px; text-align: center">Invoice/Receipt</h1></th>
  </tr>
  <tr>
      <th colspan="6">
          <div class="row">
              <div class="col-md-4">
                  <h4 style=" text-align: left; padding-top: 13px;">Name: ${cartItems.get(0).getName()}</h4>
                       <h4 style=" text-align: left;">Shipping Address: ${cartItems.get(0).getAddress()}</h4>
                       <h4 style=" text-align: left; ">Billing Address: ${cartItems.get(0).getBillingaddress()}</h4>
                  </div>
                  <div class="col-md-4"><h3 style=" text-align: center; margin-top: -3px;">Foodies Resturant & Bar</h3><br></div>
                  <div class="col-md-4"><h4 style=" text-align: center; padding-top: 13px;">Invoice number: #${cartItems.get(0).getId()}</h4>
                      <h4 style=" text-align: center;">Order Date & Time:<p id="demo"></p>
                          </h4>
                      <script>
                    var d = new Date();
                   document.getElementById("demo").innerHTML = d;
                   </script>
                      
                  </div>
          </div>
      </th>
  </tr>
  <tr>
      <td>Product Image</td>
    <td>Product Code</td>
    <td>Items Name</td>
    <td>Qty.</td>
    <td>Price</td>
    <td>Sub-Total</td>
  </tr>
 
  <c:set var="gTotal" value="0"></c:set>
  
  <c:forEach items="${cartItems}" var="x">
 <tr>
     <td><img src="${x.getProduct().getImage()}" style="width: 50px; height:50px;"></td>
    <td>${x.getProduct().getId()}</td>
    <td>${x.getProduct().getProductname()}</td>
    <td>${x.getQty()}</td>
    <td>${x.getProduct().getPrice()}</td>
    <td>${x.getQty() * x.getProduct().getPrice()}</td>
    <c:set var="gTotal" value="${gTotal + x.getQty() * x.getProduct().getPrice()}"></c:set>
 </tr>
  </c:forEach>
 <tr>
     <td colspan="5"><h1 style="font-size: 20px; text-align: right"> Grand Total:  </h1></td>
     <td>${gTotal}</td>
 </tr>
</table>
 <p style=" text-align: center;"><button class="btn" onclick="myFunction()">Print this page</button>
     <a href="CartAnd.jsp?email=${param.email}"><button class="btn btn-success">Place Order</button></a>
 </p>

<script>
function myFunction() {
    window.print();
}
</script>
    </body>
</html>
