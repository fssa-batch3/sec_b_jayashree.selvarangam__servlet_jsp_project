<%@page import="in.fssa.expressocafe.model.Category"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.expressocafe.service.CategoryService"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    form {
        width: 40%; /* Reduce the width to 40% */
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
    textarea,
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    textarea {
        resize: vertical;
        height: 150px;
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
<body>
<%  Product product = (Product) request.getAttribute("product");   %>
	<form action="update" method="post">
		<% CategoryService category = new CategoryService(); %>
   	  	<% List<Category> cateList = category.getAllCategories(); %>
		<input type="hidden" name="id" value="<%= product.getProduct_id() %>" />
		<label for="name">Product Name:</label>
		<input type="text"  name="name" value="<%=  product.getName() %>"  required>
		<br>
		<label for="description">Description:</label><br>
		<textarea  name="description" rows="4" required><%=  product.getDescription() %></textarea>
		<br>
		<label>Select Category</label> 
		<select name="categoryId" id="categorySelect" required>
			<option value="">Select</option>
			<% for(Category obj: cateList){ %>
			<option value="<%=obj.getCategoryId() %>"><%=obj.getCategoryName() %></option>
			<%
			}
			%>
		</select> 
		
		<button type="submit">Submit</button>
	</form>
</body>
</body>
</html>