<%@page import="in.fssa.expressocafe.service.ProductService"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <h1>Product Details</h1>
    <%
	
	Product product = null;
	%>
	<% product = (Product) request.getAttribute("productDetails"); %>
    <table>
    
        <tr>
            <th>Attribute</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Product ID:</td>
            <td><%= product.getProduct_id() %></td>
        </tr>
        <tr>
            <td>Product Name:</td>
            <td><%= product.getName() %></td>
        </tr>
        <tr>
            <td>Product Description:</td>
            <td><%= product.getDescription() %></td>
        </tr>
        <tr>
            <td>Category:</td>
            <td><%= product.getCategory().getCategoryId() %>></td>
        </tr>
        <tr>
            <td>Prices:</td>
            <td>
                <ul>
                    <% for (Price price : product.getPriceList()) {  %>
                        <li><strong><%= price.getSize() %></strong>: <%= price.getPrice() %></li>
                    <% } %>
                </ul>
            </td>
        </tr>
    </table>

</body>
</html>