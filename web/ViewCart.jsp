<%-- 
    Document   : ProductSuccess
    Created on : 20 Sep, 2018, 12:43:37 PM
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
        <title>Cart View</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin: auto; width: 80%;">
        <h1>Cart View</h1>
        <br>
        <h1>Your Products:</h1><br>
        <table class="table table-striped"> 

            <thead>
    
                <tr>
                    
                    <td><a href="AllProductView.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Continue Ordering</a></td>
                     <td><a href="PlaceOrder.jsp?email=${param.email}" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Place Order</a></td>
   
                </tr>
                <tr>
                    <td>Image</td>
                    <td>Category</td>
                    <td>Product Name</td>
                    <td>Price</td>
                    <td>Qty</td>
                    <td>Sub-Total</td>

                    <td>Delete</td>
                    
                </tr>

            </thead>

            <tbody>

                <c:set var="gTotal" value="0"></c:set>
                
                <c:forEach items="${cartItems}" var="x">
                    <tr>
                        <td><img src="${x.getProduct().getImage()}" style="width: 50px; height:50px;"></td>
                        <td>${x.getProduct().getCategoryname()}</td>
                        <td>${x.getProduct().getProductname()}</td>
                        <td>${x.getProduct().getPrice()}</td>
                        <td>${x.getQty()}</td>
                        <td>${x.getQty() * x.getProduct().getPrice()}</td>
                        
                        <c:set var="gTotal" value="${gTotal + x.getQty() * x.getProduct().getPrice()}"></c:set>
                        
                        <td><a href="DeleteProductFromCart?id=${x.getId()}&email=${param.email}" class="btn btn-danger">Delete</a></td>
                        
                    </tr>
                </c:forEach>

            </tbody>

        </table> 


                <h1> Grand Total: ${gTotal} </h1>
                
    </body>
</html>
