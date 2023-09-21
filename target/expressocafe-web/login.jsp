<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;1,200;1,300;1,400;1,500;1,600;1,700&
    family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;1,200;1,300;1,400;1,500;1,600;1,700&family=Kurale&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
<title>Login</title> <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login_page {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 20px;
            width: 300px;
            text-align: center;
        }

        .login_page img {
            max-width: 100px;
            margin-bottom: 20px;
        }

        .name_login {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .input_box {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        .visible_pass {
            text-align: left;
            margin: 10px 0;
        }

        .visible_pass label {
            margin-left: 5px;
        }

        .for_button {
            margin-top: 20px;
        }

        .btn_login {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px;
            cursor: pointer;
            width: 100%;
        }

        .btn_login:hover {
            background-color: #0056b3;
        }

        p {
            margin-top: 20px;
        }

        p a {
            text-decoration: none;
            color: #007BFF;
        }

        p a:hover {
            text-decoration: underline;
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
	

	<main>
		<section>
			<form class="login_page" action="login" method="post">
			
				<h2 class="name_login">
					<span>Log</span> In
				</h2>

				<label>Email ID: </label> 
				<input type="email" name="email"for="email" placeholder="Enter your email" class="input_box" id="email"required> 
				
				<label>Password: </label> 
				<input type="password" name="password" placeholder="Enter your password" class="input_box" id="password" required="true">
				
				<div class="visible_pass">
					<input type="checkbox" id="show"> <label>Show
						password</label>
				</div>

				<div class="for_button">
					<button class="btn_login" type="submit">Log in</button>
				</div>
				<p>
					New to Website? <a href="new_register_servlet">Create an account</a>
				</p>
			</form>
		</section>
	</main>

	<script type="text/javascript">
     // show password
        const Password = document.querySelector("#password");
        const Checkbox = document.querySelector("#show");

        Checkbox.addEventListener("click", () => {
          const type =
            Password.getAttribute("type") === "password" ? "text" : "password";
          Password.setAttribute("type", type);
        });

    
        </script>

</body>
</html> --%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>coffee shop </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" 
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/login.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/footer.css ">
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
          * { font-family: 'Aclonica', sans-serif;
font-family: 'Merienda', cursive;
font-family: 'Montserrat', sans-serif;
font-family: 'Poppins', sans-serif;
font-family: 'Quicksand', sans-serif;
        }
        </style>
    </head>
    <body>
        <!-- header section starts  -->
        <!-- <header class="header">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="fas fa-bars"></label>
            <a href="../../index.html" class="logo"> Coffee <i class="fas fa-mug-hot"></i> </a>

            <nav class="navbar">
            <a href="../../index.html">Home</a>
            <a href="../../pages/order/order-bestseller.html">Order</a>
            <a href="../../pages/payment/payment.html">Pay</a>
            <a href="../../pages/My orders/myorders.html">My orders</a> -->
        <!--<a href="../../pages/blogs/blog.html">Blogs</a>--> 
        <!-- </nav>
            <div class="icons">
            <a href="../../pages/add to cart/addtocart.html" class="fas fa-shopping-cart"></a>
            <a href="../../pages/profile/profile.html" class="fas fa-user"></a>
            </div>
            <a href="../../pages/login/login.html" class="btn">Login</a>

            </header> -->
	<%
	String err = request.getParameter("error");
	%>
	<%
	if (err != null) {
	%>
	<div class="error_div">
		<p><%=err%></p>
	</div>
	<%
	}
	%>
	<jsp:include page="/header.jsp"></jsp:include>
        <section class="profile" id="profile">

            <h1 class="heading">Login</h1>
           	<form class="login_page" action="login" method="post">
                <label>Email-id:</label>
                <input type="email"  name="email"  id="user_email" pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"  title="Email doesnot match the pattern" class="box" required="true">
                <label>Password:</label>
                <input type="password" name="password" id="user_password"  placeholder="" class="box" required="true">
              <div class="visible_pass">
					<input type="checkbox" id="show"> <label>Show
						password</label>
				</div>

                
                <button class="btn" type="submit">Login</button>
               
                <div>
                    <p class="sign">
                        If your are new customer <a href="new_register_servlet">Create an account</a>
                    </p>
                </div>
            </form>
           
        </section>

    </body>
    <script> 
    const Password = document.querySelector("#password");
    const Checkbox = document.querySelector("#show");

    Checkbox.addEventListener("click", () => {
      const type =
        Password.getAttribute("type") === "password" ? "text" : "password";
      Password.setAttribute("type", type);
    });

    
    
// uncomment this code//
const sign = (e) => {
  const user_email = document.getElementById("user_email").value;
  const user_password = document.getElementById("user_password").value;
  const a = JSON.parse(localStorage.getItem("user_list")) || [];
  const exist =
    a.length &&
    JSON.parse(localStorage.getItem("user_list")).some(
      (data) =>
        data.user_email.toLowerCase() == user_email.toLowerCase() &&
        data.user_password.toLowerCase() == user_password.toLowerCase()
    );
  if (!exist) {
            alert("Incorrect login credentials");
  } else {
            user_detail = { user_email };
            unique_id = user_email;
            localStorage.setItem("unique_id", JSON.stringify(unique_id));
            localStorage.setItem("user_data", JSON.stringify(user_detail));
            alert("Your login in successful");
            location.href = "/index.html";
  }
  e.preventDefault();
};

/// ends the previous code///

// comment this code//
// const startPoint = "http://localhost:8080/expressocafe-web"; // se
// const origin = "http://127.0.0.1:5501/"; // js
// async function signIn(e) {
//   e.preventDefault();
//   const email = document.getElementById("user_email").value;
//   const password = document.getElementById("user_password").value;
//   const response = await fetch(
//     `${startPoint}/LoginNew?email=${email}&password=${password}`
//   );
  
//   if (response.ok) {
//      response.json().then((data) => {
//       const dataValue = data.data;
//       alert("You are logged in successfully");
//       sessionStorage.setItem("user_id", dataValue);
//       location.href = `/index.html`;
//     });
//   } else {
//     await response.json().then((error) => {
//       const errorMessage = error.message;
//       alert(errorMessage);
//     });
//   }
// }

// code ends here//


// Get references to the checkbox and password input field
const checkbox = document.getElementById('show-password');
const passwordField = document.getElementById('user_password');

// Add event listener to the checkbox
checkbox.addEventListener('change', function () {
  // Toggle the password visibility based on the checkbox state
  if (checkbox.checked) {
    passwordField.setAttribute('type', 'text');
  } else {
    passwordField.setAttribute('type', 'password');
  }
});
</script> 
</html>