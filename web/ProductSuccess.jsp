<%-- 
    Document   : ProductSuccess
    Created on : 20 Sep, 2018, 12:43:37 PM
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
        <title>Product View</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin: auto; width: 80%;">
        <h1>Product Added Successfully</h1>
        <br>
        <h1>Product:</h1><br>
        
        <a href="AddProduct.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add More Category</a>
        <table class="table table-striped"> 
            
            <thead>
                
                <tr>
                    <td>Id</td>
                    <td>Image</td>
                    <td>Category</td>
                    <td>Product Name</td>
                    <td>Price</td>
                    
                    <td>Update Image</td>
                    <td>Update</td>
                    <td>Delete</td>
                    <td>View</td>
                </tr>
                
            </thead>
            
            <tbody>
             
                <c:forEach items="${Product}" var="x">
                <tr>
                    <td>${x.getId()}</td>
                    <td><img src="${x.getImage()}" style="width: 50px; height:50px;"></td>
                    <td>${x.getCategoryname()}</td>
                    <td>${x.getProductname()}</td>
                    <td>${x.getPrice()}</td>
                    <td><a href="UpdateProduct.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
                    <td><a href="UpdateProduct.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
                    <td><a href="DeleteProduct?id=${x.getId()}" class="btn btn-danger">Delete</a></td>
                    <td><a href="ViewSingleProduct.jsp?id=${x.getId()}" class="btn btn-primary">View</a></td>
                    
                </tr>
                </c:forEach>
                
            </tbody>
            
        </table> 
    </body>
</html>
