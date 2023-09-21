<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all prices</title>
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
    <h1>Product Prices</h1>
    
    <table>
        <tr>
            <th>Product ID</th>
            <th>Size ID</th>
            <th>Prices</th>
            <th>Price Start Date</th>
            <th>Price End Date</th>
        </tr>
        <%
            List<Price> priceList = (List<Price>) request.getAttribute("PriceList");
            for (Price price : priceList) {
        %>
            <tr>
                <td><%= price.getProductId() %></td>
                <td><%= price.getSize().getSizeId() %></td>
                <td><%= price.getPrice() %></td>
                <td><%= price.getStartDate() %></td>
                <%if(price.getEndDate() != null){ %>
                <td><%= price.getEndDate() %></td>
                <%} 
                  else { %>
                <td>current price</td>
                <%} %>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
