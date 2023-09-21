<%@page import="java.util.List"%>
<%@page import="in.fssa.expressocafe.service.CategoryService"%>
<%@page import="in.fssa.expressocafe.model.Category"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
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
    /* Reset default styles */
body, ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

/* Header styles */
header {
    background-color: #333;
    color: #fff;
    padding: 20px 0;
}

/* Logo styles */
.logo img {
    width: 100px; /* Adjust the logo size as needed */
    height: auto;
    display: block;
    margin: 0 auto; /* Center the logo horizontally */
}

/* Navigation styles */
nav {
    text-align: center;
}

.nav-links li {
    display: inline-block;
    margin-right: 20px; /* Adjust the spacing between navigation links */
}

.nav-links a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    font-size: 16px;
    transition: color 0.3s ease;
}

.nav-links a:hover {
    color: #ff6600; /* Change the link color on hover */
}

</style>

</head>
<body>
<%@ include file="header_admin.jsp" %>

	<%
	String errorMessage = request.getParameter("error");
	%>
	<%
	if (errorMessage != null) {
	%>
	<div class="error_div">
		<p><%=errorMessage%></p>
	</div>
	<%
	}
	%>
<form action="createproduct" method="POST">
    <% CategoryService category = new CategoryService(); %>
    <% List<Category> cateList = category.getAllCategories(); %> 
    <label for="name">Product Name:</label>
    <input type="text" name="name" required><br><br>
    
    <label for="description">Product Description:</label><br>
    <textarea name="description" required></textarea><br><br>
    
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
    <input type="number" name="large-price" required min="10" max="1000"><br><br>
    
    <label for="medium-price">Medium Price:</label>
    <input type="number" name="medium-price" required min="10" max="1000"><br><br>
    
    <label for="small-price">Small Price:</label>
    <input type="number" name="small-price" required min="10" max="1000"><br><br>
    
    <button type="submit" value="Submit">submit</button>
</form>
</html>