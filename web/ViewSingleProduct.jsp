<%-- 
    Document   : ViewSingleProduct
    Created on : 21 Sep, 2018, 2:21:54 PM
    Author     : rajku
--%>

<%@page import="dao.ProductDAO"%>
<%@page import="impl.ProductDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ProductDAO pdao = new ProductDAOImpl();
    
    int id = Integer.parseInt( request.getParameter("id") );
    
    request.setAttribute("product", pdao.getProduct(id));
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Single Product</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            
        </style>
    </head>
    <body style="margin: auto; width: 80%;">
       
        <div class="box">
        <h1>${product.getProductname()}</h1>
    
        <img src="${product.getImage()}" class="img img-thumbnail" style="max-width: 400px; height: 350px;"/>
        </div>
        <br>
        <hr>
        
        <form action="AddToCart" method="post">
            
            <input type="hidden" name="pid" value="${product.getId()}"/>
            <select name="qty" class="" required="" style="width:80px; height: 40px;">
                <option name="qty" value="">QTY</option>
                <option name="qty" value="1">QTY 1</option>
                <option name="qty" value="2">QTY 2</option>
                <option name="qty" value="3">QTY 3</option>
                <option name="qty" value="4">QTY 4</option>
                <option name="qty" value="5">QTY 5</option>
                <option name="qty" value="6">QTY 6</option>
                <option name="qty" value="7">QTY 7</option>
                <option name="qty" value="8">QTY 8</option>
                <option name="qty" value="9">QTY 9</option>
            </select>
            
            <br><br>
            <input type="email" name="email" value="${param.email}" class="form-control" placeholder="Enter Email" required=""/>
            
            <br>
            
            <input type="submit" value="Buy" class="btn btn-success"/>
            
        </form>
        
    </body>
</html>
