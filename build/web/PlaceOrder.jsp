<%-- 
    Document   : PlaceOrder
    Created on : 25 Sep, 2018, 12:48:31 PM
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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .texta{
                width: 350px;
            }
        </style>
    </head>
    <body style="padding: 45px;">
        <h1>Enter Shipping Address & Billing Address</h1>
        <form action="UpdateAddressInCart" method="post">
           
               <input type="hidden" name="email" value="${param.email}"/>
             
                <br><br>
            <label>Full name</label>
            <input type="text" name="name" class="form-control texta" placeholder="Enter Your Full Name" required="" /><br>
            <label>Delivery Address</label>
            <textarea required="" name="address" class="form-control texta"placeholder="Enter Your Delivery Address" rows="5px;"></textarea><br>
            <label>Billing Address</label>
            <textarea required="" name="billingaddress" class="form-control texta"placeholder="Enter Your Delivery Address" rows="5px;"></textarea><br>
            <input type="submit" value="Place Order" class="btn btn-primary"/>
        </form>
    </body>
</html>
