<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


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
    <!-- script for sweet alert -->
		<script src="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.all.min.js
		"></script>
		<link href="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.min.css
		" rel="stylesheet">
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
        
            body {
            font-family: 'Aclonica', sans-serif;
        }
        h1, input ,label {
            font-family: 'Merienda', cursive;
        }
        
        .password-container {
	    position: relative;
		}
	
		
		.password-wrapper {
		    position: relative;
		}
		
		#password {
		    padding-right: 30px; 
		}
		
		#togglePassword {
		    position: absolute;
		    top: 50%;
		    right: 50px; 
		    transform: translateY(-50%);
		    cursor: pointer;
		}
		
        </style>
    </head>
    <body>
	
	<jsp:include page="/header.jsp"></jsp:include>
        <section class="profile" id="profile">

            <h1 class="heading">Login</h1>
           	<form class="login_page" action="login" onsubmit="return validateForm();" method="post">

                <label>Email-id:</label>
                <input type="email"  name="email"  placeholder="Email-Id" id="user_email" required name="email"  autocomplete="on"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Email doesnot match the pattern" class="box" required="true">
                <label>Password:</label>
               <div class="password-wrapper">
		    <input class="box" type="password" id="password" placeholder="password" name="password" autocomplete="new-password" required="true">
		    <i id="togglePassword" class="fa-solid fa-eye" onclick="togglePasswordVisibility('password')"></i>
		</div>
                <button class="btn" type="submit">Login</button>
                <div>
                    <p class="sign">
                        If your are new customer <a href="new_register_servlet">Create an account</a>
                    </p>
                </div>
            </form>
             <div class="error_div" id="errorDiv"></div>
           	<div>
					<%
					String err = request.getParameter("error");
					%>
					<%
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

			
    </body>
 
	<script type="text/javascript">
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
   
    function validateForm() {
    	// Clear previous error messages
        var emailInput = document.getElementById("user_email");
        var passwordInput = document.getElementById("password");
        var errorDiv = document.getElementById("errorDiv");
        errorDiv.innerHTML = ""; 
        // Basic email format validation
        // Basic email format validation
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (!emailPattern.test(emailInput.value)) {
        // Use Swal to show an alert with a custom message
        Swal.fire({
            icon: 'error',
            title: 'Validation Error',
            text: 'Invalid Email Format. Please enter a valid email address.'
        });
        emailInput.focus();
        return false; // Return false to prevent form submission
    }

    var passwordPattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*]).{8,}$/;
    if (!passwordPattern.test(passwordInput.value)) {
        // Use Swal to show an alert with a custom message
        Swal.fire({
            icon: 'error',
            title: 'Validation Error',
            text: 'Password must contain at least 8 characters, including one uppercase letter, one lowercase letter, one number, and one special character.'
        });
        passwordInput.focus();
        return false; // Return false to prevent form submission
    }

        // If validation passes, the form will be submitted
        return true;
    }
</script>
<script>
let allProductsDetails = [];
async function getAllProducts() {
    try {
        const response = await fetch("http://localhost:8080/expressocafe-web/AllProdServlet", {
            method: "GET",
        });

        if (!response.ok) {
            throw new Error("HTTP error! Status: "+ response.status);
        }

        const responseData = await response.json();

        // Access the array of products from the 'data' property
        allProductsDetails = responseData.data;
		console.log("allProductsDetails",allProductsDetails);
        // Call a function to process or display the data
        getAllProductsDetails(allProductsDetails);
    } catch (error) {
        console.error("Error fetching product data:", error);
    }
}

//Call the function to fetch product data
getAllProducts();
const rootPath = window.location.origin;
// function to process or display the data

function getAllProductsDetails(allProducts) {

//Assuming you have these variables defined elsewhere in your code
const searchInput = document.getElementById('searchInput');
const searchResults = document.getElementById('searchResults');

//Function to process or display the data fetched from the database
function getAllProductsDetails(allProducts) {
// Add an event listener to the search input
searchInput.addEventListener('input', function() {
const searchQuery = this.value.trim();

// Clear previous search results
searchResults.innerHTML = '';

if (searchQuery !== '') {
  const results = getMatchingResults(searchQuery, allProducts);
  displayResults(results);

  if (results.length === 0) {
    displayNoResultsMessage(); // Display 'No results found' message
  }
} else {
  // Input field is empty, do not display 'No results found' message
}
});
}

//Function to get matching results from the fetched data
function getMatchingResults(query, allProducts) {
return allProducts.filter(function(product) {
return product.name.toLowerCase().includes(query.toLowerCase());
});
}

//Function to display search results
function displayResults(results) {
results.forEach(function(result) {
const listItem = document.createElement('li');
const listItem1 = document.createElement('a');

// Assuming you have a product detail URL in your data
const uuid = result.product_id;
listItem1.setAttribute('href', "http://localhost:8080/expressocafe-web/product_detail?product_id="+uuid);
listItem1.textContent = result.name;
listItem.appendChild(listItem1);

searchResults.appendChild(listItem);
});
}

//Function to display 'No results found' message
function displayNoResultsMessage() {
const noResultsMessage = document.createElement('li');
noResultsMessage.textContent = 'No results found.';
searchResults.appendChild(noResultsMessage);
}

//...

//Call a function to process or display the data
getAllProductsDetails(allProductsDetails);
}
 
</script>

</html>
