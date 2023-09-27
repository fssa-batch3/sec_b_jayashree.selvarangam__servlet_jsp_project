<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coffee Shop</title>

    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/signup.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
          <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;1,200;1,300;1,400;1,500;1,600;1,700&
    family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <style>
        /* Apply different fonts to different elements */
        body {
            font-family: 'Aclonica', sans-serif;
        }
        h1, input {
            font-family: 'Merienda', cursive;
        }
        
	    .password-container {
	    position: relative;
		}
	
		
		.password-wrapper {
    position: relative;
}

#password {
    padding-right: 30px; /* Adjust the padding to accommodate the icon */
}

#togglePassword {
    position: absolute;
    top: 50%;
    right: 50px; /* Adjust the right spacing as needed */
    transform: translateY(-50%);
    cursor: pointer;
}
    /* Add similar rules for other elements as needed */
    </style>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>


<section class="profile" id="profile">
    <h1 class="heading">
        <i class="fa-solid fa-circle-user"></i> Signup
    </h1>
    <form role="form" action="register" method="post" onsubmit="return validateForm();">
        <input type="text" name="firstName" id="name" title="Use first letter between (A-Z) and don't leave spaces in between" pattern="^[a-zA-Z][a-zA-Z0-9-_\\.]{1,15}$" placeholder="firstName" class="box" required>
        <input type="text" name="lastName" id="lastName" required class="box" placeholder="lastName"><br><br>
        <input type="email" name="email" id="email" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" placeholder="Email-Id" class="box" required>
		<div class="password-wrapper">
		    <input class="box" type="password" id="password" placeholder="password" name="password" autocomplete="new-password">
		    <i id="togglePassword" class="fa-solid fa-eye" onclick="togglePasswordVisibility('password')"></i>
		</div>

        <input class="box" type="password" id="confirm_password" placeholder="confirm_password" title="" autocomplete="new-password" oninput="checkPasswordMatch()">
        <p class="error-message" id="password-mismatch-error" style="display: none;">Password do not match!</p>

        <%
        String data = (String) request.getParameter("error");
        if (data != null) {
        %>
        <p id="error_msg"><%=data%></p>
        <%
        }
        %>

        <input type="tel" name="phoneNo" id="mobilenumber" pattern="^[1-9]\d{9}$" title="Enter 10 numbers only" placeholder="Mobile number" class="box" required>
        
        <button type="submit" class="btn">Signup</button>
        <div>
            <p class="sign">
                If you are already a customer <a href="LoginNew">Login</a>
            </p>
        </div>
    </form>
    	<div>
					<%
					String err = request.getParameter("error");
					if (err != null) {
					%>
					<script>
					    // Display a Swal alert when the 'err' parameter is not null
					    Swal.fire({
					        icon: 'error',
					        title: 'Error',
					        text: '<%=err%>'
					    });
					</script>
					<%
					}
					%>
					
				</div>
</section>
<script>
    function togglePasswordVisibility(inputId) {
        var passwordInput = document.getElementById(inputId);
        var toggleButton = document.getElementById("togglePassword");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            toggleButton.classList.remove("fa-eye");
            toggleButton.classList.add("fa-eye-slash");
        } else {
            passwordInput.type = "password";
            toggleButton.classList.remove("fa-eye-slash");
            toggleButton.classList.add("fa-eye");
        }
    }

    function checkPasswordMatch() {
        var passwordField = document.getElementById("password");
        var reEnterPasswordField = document.getElementById("confirm_password");
        var errorElement = document.getElementById("password-mismatch-error");
        if (passwordField.value !== reEnterPasswordField.value) {
            errorElement.style.display = "block";
        } else {
            errorElement.style.display = "none";
        }
    }

    function validateForm() {
        var firstName = document.getElementById("name").value;
        var lastName = document.getElementById("lastName").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm_password").value;
        var phoneNo = document.getElementById("mobilenumber").value;

        // Pattern checks
        var namePattern = /^[a-zA-Z][a-zA-Z0-9-_\\.]{1,15}$/;
        var emailPattern = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        var phonePattern = /^[1-9]\d{9}$/;

        if (!namePattern.test(firstName) || !namePattern.test(lastName)) {
            // Use Swal to show an alert with a custom message
            Swal.fire({
                icon: 'error',
                title: 'Validation Error',
                text: 'First name and last name must match the pattern.'
            });
            return false;
        }

        if (!emailPattern.test(email)) {
            // Use Swal to show an alert with a custom message
            Swal.fire({
                icon: 'error',
                title: 'Validation Error',
                text: 'Email does not match the pattern.'
            });
            return false;
        }
        
        var passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}$/;
        if (!passwordPattern.test(password)) {
            // Use Swal to show an alert with a custom message
            Swal.fire({
                icon: 'error',
                title: 'Validation Error',
                text: 'Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, one number, and one special character.'
            });
            return false;
        }

        if (password !== confirmPassword) {
            // Use Swal to show an alert with a custom message
            Swal.fire({
                icon: 'error',
                title: 'Validation Error',
                text: 'Passwords do not match.'
            });
            return false;
        }

        if (!phonePattern.test(phoneNo)) {
            // Use Swal to show an alert with a custom message
            Swal.fire({
                icon: 'error',
                title: 'Validation Error',
                text: 'Mobile number does not match the pattern.'
            });
            return false;
        }

       
        // Form is valid if it passes all checks
        return true;
    }
</script>
</body>
</html>



