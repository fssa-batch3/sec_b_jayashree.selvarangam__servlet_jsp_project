<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/signup.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/footer.css">
    <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            font-family: 'Aclonica', sans-serif;
            font-family: 'Merienda', cursive;
            font-family: 'Montserrat', sans-serif;
            font-family: 'Poppins', sans-serif;
            font-family: 'Quicksand', sans-serif;
        }
    </style>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<a href="<%= request.getContextPath() %>/assets/image/logo-transparent-png.png"></a>
<section class="profile" id="profile">
    <h1 class="heading">
        <i class="fa-solid fa-circle-user"></i> Signup
    </h1>
    <form role="form" action="register" method="post" onsubmit="return validateForm();">
        <input type="text" name="firstName" id="name" title="Use first letter between (A-Z) and don't leave spaces in between" pattern="^[a-zA-Z][a-zA-Z0-9-_\\.]{1,15}$" placeholder="firstName" class="box" required>
        <input type="text" name="lastName" id="lastName" required class="box" placeholder="lastName"><br><br>
        <input type="email" name="email" id="email" pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/" placeholder="Email-Id" class="box" required>
        <input type="password" name="password" id="password" title="At least one uppercase letter (A-Z), one lowercase letter (a-z), one digit (0-9), and min 8 characters" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&amp;*_=+-]).{8,24}$"  placeholder="Password" class="box" required>
        <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password" class="box" required>
        
        <input type="tel" name="phoneNo" id="mobilenumber" pattern="^[1-9]\d{9}$" title="Enter 10 numbers only" placeholder="Mobile number" class="box" required>
        <div class="error" id="phoneError"></div>
        <div>
            <input type="checkbox" id="show-password" onclick="togglePasswordVisibility()" class="btn">
            <label for="show-password">Show Password</label>
        </div>
        <button type="submit" class="btn">Signup</button>
        <div>
            <p class="sign">
                If you are already a customer <a href="LoginNew">Login</a>
            </p>
        </div>
    </form>
</section>

</body>
</html>
