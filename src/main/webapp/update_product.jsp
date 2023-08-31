<%@page import="in.fssa.expressocafe.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<%  Product product = (Product) request.getAttribute("product");   %>
	<form action="update" method="post">
	
		<input type="hidden" name="id" value="<%= product.getProduct_id() %>" />
		<label for="name">Product Name:</label>
		<input type="text"  name="name" value="<%=  product.getName() %>"  required>
		<br>
		<label for="description">Description:</label><br>
		<textarea  name="description" rows="4" required><%=  product.getDescription() %></textarea>
		<br>
		<label for="category">category:</label><br>
		<textarea name="category" rows="4" required> <%= product.getCategory().getCategoryId()   %></textarea>
		<br>
		
		<button type="submit">Submit</button>
	</form>
</body>
</body>
</html>