<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
    
    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border: 1px solid #ccc;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        border-radius: 5px;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    button[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 3px;
        cursor: pointer;
    }

    button[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<form action = "register" method = "post">
		<label for="firstName">First Name</label>
		<input type = "text" name = "firstName" required/><br><br>
		
		<label for="lastName">Last Name</label>
		<input type = "text" name = "lastName" required/><br><br>
		
		<label for="email">Email</label>
		<input type = "email" name = "email" required/><br><br>
		
		<label for="password">password</label>
		<input type = "password" name = "password" required/><br><br>
		
		<label for="phoneNo">Phone Number</label>
		<input type = "tel" name = "phoneNo" required/><br><br>
		
		<button type = "submit">SUBMIT</button>
		
	</form>
</body>
</html>