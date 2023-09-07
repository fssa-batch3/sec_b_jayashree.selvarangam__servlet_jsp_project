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
<title>Insert title here</title>
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
</style>
</head>
<body>
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
			<a href="products/details?productId=<%= product1.getProduct_id()%>">
			<button class="view" type="submit">View</button>
			</a>
			</td>
			
			<td>
			<a href="product/edit?productId=<%= product1.getProduct_id()%>">
			<button type="submit">update</button> 
			</a>
			</td>
			<td>
			<a href="product/delete?productId=<%=product1.getProduct_id()%>">
			<button type="submit">delete</button> 
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