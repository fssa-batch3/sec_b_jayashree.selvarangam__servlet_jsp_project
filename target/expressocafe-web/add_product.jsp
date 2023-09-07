<%@page import="java.util.List"%>
<%@page import="in.fssa.expressocafe.service.CategoryService"%>
<%@page import="in.fssa.expressocafe.model.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    form {
        width: 60%;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    textarea,
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
 <form action="create" method="POST">
 		<%CategoryService category = new CategoryService(); %>
   	   	<% List<Category> cateList = category.getAllCategories(); %> 
        <label for="name">Product Name:</label>
        <input type="text"  name="name" required><br><br>
        
        <label for="description">Product Description:</label><br>
        <textarea  name="description"  required></textarea><br><br>
        
		<label>Select Category</label> 
		<select name="categoryId" id="categorySelect" required>
			<option value="">Select</option>
			<% for(Category obj: cateList){ %>
			<option value="<%=obj.getCategoryId() %>"><%=obj.getCategoryName() %></option>
			<%
			}
			%>
		</select> 
        
        <label for="large-price">Large Price:</label>
        <input type="number" name ="large-price"   required><br><br>
        
        <label for="medium-price">Medium Price:</label>
        <input type="number"  name="medium-price"  required><br><br>
        
        <label for="small-price">Small Price:</label>
        <input type="number"  name="small-price"  required><br><br>
        
        <button type="submit" value="Submit">submit</button>
    </form>
</body>
</html>