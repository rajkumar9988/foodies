
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body style="margin-left: 250px; margin-right: 250px;">
        <fieldset><legend><h1>Add Category</h1></legend>
            <form action="AddCategory" method="post" enctype="multipart/form-data">
                <label>Category Name:</label>
                <input type="text" name="categoryname" placeholder="Enter Category Name" class="form-control" />
                <br>
                <label>Image Of Category:</label>
                <input type="file" name="image" class="form-control"/>
                <br>
                <label>Enter Description Of Your Category:</label>
                <textarea type="text" name="description" placeholder="Description Of Category" class="form-control"></textarea>
                <br>
                <input type="submit" class="btn btn-success"value="Add Category">
            </form>
        </fieldset>
    </body>
</html>
