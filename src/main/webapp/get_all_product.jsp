<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="in.fssa.expressocafe.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all produts</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
  }
  
  table {
    border-collapse: collapse;
    width: 100%;
    margin-top: 20px;
  }
  
  th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }
  th {
    background-color: #f2f2f2;
  }
  button {
    padding: 6px 10px;
    border: none;
    background-color: #007bff;
    color: white;
    cursor: pointer;
    border-radius: 4px;
  }
  button:hover {
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
	List<Product> productList = new ArrayList<>();
	/* if(request.getParameter("productId") != null){
		int id  = Integer.parseInt(request.getParameter("productId"));
		product = prod.findProductWithProductId(id);
	} */%>

	
	
	<% productList = (List<Product>) request.getAttribute("ProductList"); %>

	<table>
		<tr>
		 	<th>view</th>
			<th>update</th>
			<th>delete</th>
			<th>update  with prices</th>
			<th>Id</th>
			<th>ProductName</th>
			<th>Product Description</th>
			<th>Large Price</th>
			<th>medium Price</th>
			<th>small Price</th>
			
			
		</tr>
		<%
		for (Product product1 : productList) {
		%>
		<tr>
			<td>
			<a href="details?productId=<%= product1.getProduct_id()%>">
			<button class="view" type="submit">View</button>
			</a>
			</td>
			
			<td>
			<a href="editproduct?productId=<%= product1.getProduct_id()%>">
			<button type="submit">update</button> 
			</a>
			</td>
			<td>
			<a href="deleteproduct?productId=<%=product1.getProduct_id()%>">
			<button type="submit">delete</button> 
			</a>
			</td>
			<td>
			<a href="edit_product_with_prices?productId=<%=product1.getProduct_id()%>">
			<button type="submit">update with price</button> 
			</a>
			</td>
			
			
			<td><%=product1.getProduct_id()%></td>
			<td><%=product1.getName()%></td>
			<td><%=product1.getDescription()%></td>
			
			<%for (Price price : product1.getPriceList()) {%>
			
			<td><%=price.getPrice()%></td>
			<% } %>
			
		</tr>

		<%}%>
		</tr>
	</table>
</body>
</html>