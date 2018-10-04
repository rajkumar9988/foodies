
<%@page import="model.Category" %>
<%@page import="dao.CategoryDAO" %>
<%@page import="impl.CategoryDAOImpl" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
CategoryDAO udao = new CategoryDAOImpl();

request.setAttribute("category", udao.getCategory());
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CategoryView</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin: auto; width: 80%;">
        <h1>Category Added Successfully</h1>
        <h1>Category:</h1><br>
        
        <a href="AddCategory.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Add More Category</a>
        <table class="table table-striped"> 
            
            <thead>
                
                <tr>
                    <td>Id</td>
                    <td>Image</td>
                    <td>Category Name</td>
                    <td>Description</td>
                </tr>
                
            </thead>
            
            <tbody>
             
                <c:forEach items="${category}" var="x">
                <tr>
                    <td>${x.getId()}</td>
                    <td><img src="${x.getImage()}" style="width: 50px; height:50px;"></td>
                    <td>${x.getCategoryname()}</td>
                    <td>${x.getDescription()}</td>
                    <td><a href="UpdateCategory.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
                    <td><a href="DeleteCategory?id=${x.getId()}" class="btn btn-danger">Delete</a></td>
                </tr>
                </c:forEach>
                
            </tbody>
            
        </table>
    </body>
</html>
