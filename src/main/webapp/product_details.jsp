<%@page import="in.fssa.expressocafe.service.ProductService"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product detail</title>
<style>
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

/* Style the form container */
form {
    width: 80%;
    max-width: 600px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    margin: 20px auto;
    padding: 20px;
}

/* Style form labels */
form label {
    font-weight: bold;
}

/* Style form input and textarea fields */
form input[type="text"],
form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style the submit button */
form button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

form button[type="submit"]:hover {
    background-color: #0056b3;
}


</style>

</head>
<body>
<%@ include file="header_admin.jsp" %>
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