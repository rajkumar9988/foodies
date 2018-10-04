<%-- 
    Document   : CartAnd
    Created on : 28 Sep, 2018, 5:41:09 PM
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
    if (email != null) {
        cdao.deleteAllItemsByEmail(email);
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thank you</title>
    </head>
    <body>
        <h1>Thank you For Ordering Food</h1>
    </body>
</html>
