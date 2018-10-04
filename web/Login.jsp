<%-- 
    Document   : Login
    Created on : 2 Oct, 2018, 2:45:20 PM
    Author     : rajku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login|Foodies</title>
        <link rel="stylesheet" type="text/css" href="css/logincss.css">
        
        <style>
            body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: url(image/salad6.jpg);
    background-size: cover;
}
        </style>
     </head>
    <body>
        <div class="box">
        <h2>Login</h2>
        <form action="CheckLogin" method="post" >
            <div class="inpuBox">
                <input type="text" name="email" required="" autocomplete="off"/>
                <label>Username/Email</label>
            </div>
            <div class="inpuBox">
                <input type="password" name="password" required=""/>
                <label>Password</label>
            </div>
            <label>
            <input class="checkbox" type="checkbox" name="" value="Keep me Logged-in"/>Keep me logged-in
            </label><br><br>
            <input type="submit" value="Login"/>
        </form>
        </div>
    </body>
</html>
