<%-- 
    Document   : UsersSuccess
    Created on : 20 Sep, 2018, 5:31:01 PM
    Author     : rajku
--%>

<%@page import="model.Users" %>
<%@page import="dao.UsersDAO" %>
<%@page import="impl.UsersDAOImpl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
UsersDAO udao = new UsersDAOImpl();

request.setAttribute("Users", udao.getUsers());
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
    <body style="margin: auto; width: 80%;">
        <h1>Register Users</h1>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>Full Name</td>
                        <td>Address</td>
                        <td>Mobile</td>
                        <td>Email</td>
                        
                        <td>Update</td>
                        <td>Delete</td>
                    </tr>
                <tbody>
                    <c:forEach items="${Users}" var="x">
                        <tr>
                            <td>${x.getId()}</td>
                             <td>${x.getFirstname()} ${x.getLastname()}</td>
                             <td>${x.getAddress()}</td>
                             <td>${x.getMobile()}</td>
                             <td>${x.getEmail()}</td>
                             <td><a href="UserUpdate.jsp?id=${x.getId()}" class="btn btn-success">Update</a></td>
                             <td><a href="DeleteUser?id=${x.getId()}" class="btn btn-danger">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
                </thead>
            </table>
    </body>
</html>
