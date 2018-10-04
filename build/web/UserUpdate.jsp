<%-- 
    Document   : UserUpdate
    Created on : 29 Sep, 2018, 2:35:34 PM
    Author     : rajku
--%>

<%@page import="model.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="dao.UsersDAO"%>
<%@page import="impl.UsersDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
<%
UsersDAO udao = new UsersDAOImpl();

request.setAttribute("Users", udao.getUsers( Integer.parseInt(request.getParameter("id")) ));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Update</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body style="margin: auto; width: 80%;">
        <form method="post" action="UpdateUserToDB">

            <input type="hidden" value="${Users.getId()}" name="id">
        <table class="table table-striped">
            <tbody>
                <tr>
                    <td style="font-family: 'Slabo 27px', serif; font-size: 28px;"> <i><b>Id:</b></i> </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;"> <b>${Users.getId()}</b> </td>
                </tr>
                <tr>
                    <td style="font-family: 'Slabo 27px', serif; font-size: 28px;"> <i><b>First Name:</b></i> </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;"> 
                        <b>
                            <input type="text" placeholder="First Name" class="form-control" value="${Users.getFirstname()}" name="firstname"/> 
                        </b>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Slabo 27px', serif; font-size: 28px;"> <i><b>First Name:</b></i> </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;"> 
                        <b>
                            <input type="text" placeholder="Last Name" class="form-control" value="${Users.getLastname()}" name="lastname"/> 
                        </b>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Slabo 27px', serif; font-size: 28px;"> <i><b>Email:</b></i> </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;"> 
                        <b>
                            <input type="email" placeholder="Email" class="form-control" value="${Users.getEmail()}" name="email"/> 
                        </b>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Slabo 27px', serif; font-size: 28px;"> <i><b>Mobile :</b></i> </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;">
                        <b>
                            <input type="number" placeholder="Mobile Number" class="form-control" value="${Users.getMobile()}" name="mobile"/> 
                        </b>
                    </td>
                </tr>
                <tr>
                    <td style="font-family: 'Slabo 27px', serif; font-size: 28px;"> <i><b>Address:</b></i> </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;">
                        <b>
                            <textarea class="form-control" name="address">${Users.getAddress()}</textarea>
                        </b>
                    </td>
                </tr>
        
                <tr>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;">
                        <input type="submit" value="Update" class="btn btn-success"/>
                    </td>
                    <td style="font-family: 'Open Sans Condensed', sans-serif; font-size: 28px;">
                        <a href="UsersSuccess.jsp"><input type="button" value="Back" class="btn btn-danger"/></a>
                    </td>
                </tr>
            </tbody>
        </table>
        </form>
    </body>
</html>
