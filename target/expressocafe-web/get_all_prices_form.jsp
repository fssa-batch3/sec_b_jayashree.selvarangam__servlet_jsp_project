<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get All prices</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
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

    button[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
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
			String errorMessage = (String) request.getAttribute("ERRORDETAILS");
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
    <h1>Price History For a particular prodct and size</h1>
    <form action="prices" method="get">
        <label for="product_name">Product Name:</label>
        <input type="text" id="product_id" name="product_name" required><br><br>

        <label for="sizeId">Size ID:</label>
<select id="size_id" name="sizeId" required>
    <option value="1">Large</option>
    <option value="2">Medium</option>
    <option value="3">Small</option>
</select><br><br>

        <button type="submit" value="Submit">Submit</button>
        </form>
        </body>
        </html>
        

