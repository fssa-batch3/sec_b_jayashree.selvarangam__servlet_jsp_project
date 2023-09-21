<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Product Price</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            background-color: #fff;
            border: 1px solid #ccc;
            padding: 20px;
            width: 300px;
            margin: 0 auto;
        }

        label {
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .price-label {
            margin-top: 20px;
        }

        .readonly-input {
            background-color: #f4f4f4;
            cursor: not-allowed;
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
.error_div {
	margin-top: -5vh;
	text-align: center;
}

.error_div p {
	color: rgb(255, 14, 14);
	font-size: 19px;
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
    <h1>Edit Product Price</h1>
    <form action="updatePrice" method="post">
        <% Integer p = (Integer) request.getAttribute("price");%>
        <% Integer pd = (Integer) request.getAttribute("proId");%>
        <% Integer sd = (Integer) request.getAttribute("sizeId");%>
        
        <label for="product_id">Product ID:</label>
        <input type="text" value="<%= pd %>" id="product_id" name="product_id" readonly class="readonly-input"><br><br>

        <label for="size_id">Size ID:</label>
        <input type="text" value="<%= sd %>" id="size_id" name="size_id" readonly class="readonly-input"><br><br>

        <label for="price">Price:</label>
        <input type="text" value="<%= p %>" id="price" min="1" max="1000" name="price" required><br><br>

        <input type="submit" value="Update Price">
    </form>
</body>
</html>
