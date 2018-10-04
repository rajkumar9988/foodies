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
        <title>Add Product</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin-left: 250px; margin-right: 250px;">
        <fieldset><legend><h1>Add Product</h1></legend>
            <form action="AddProduct" method="post" enctype="multipart/form-data">
                
                <label>Select Category:</label>
                <select name="categoryname" class="form-control">
                    <option value="">Select Category</option>
                    <c:forEach items="${category}" var="x">
                    <option name="categoryname" value="${x.getCategoryname()}">${x.getCategoryname()}</option>
                    </c:forEach>
                </select>
                <br>
                <label>Product Name:</label>
                <input name="productname" type="text" placeholder="Product Name"class="form-control" />
                <br>
                <label>Product Image:</label>
                <input name="image" type="file"  class="form-control" />
                <br>
                <label>Product Price:</label>
                <input name="price" type="text" placeholder="Product Price" class="form-control" />
                <br>
                <input type="submit" class="btn btn-success" value="Add Product"/>
            </form>
        </fieldset>
    </body>
</html>
