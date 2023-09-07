<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
</html>