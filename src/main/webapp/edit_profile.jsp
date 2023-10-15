<%-- <%@page import="in.fssa.expressocafe.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit profile</title>
</head>
<style>
 body {
  font-family: Arial, sans-serif;
  background-color: #f4f4f4;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
}

.container {
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  width: 400px;
  padding: 30px;
  text-align: center;
}

h2 {
  margin-bottom: 20px;
  color: #333;
}

label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
  color: #555;
}

input[type="text"],
input[type="email"],
input[type="tel"],
input[type="password"] {
  width: 90%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 4px;
  transition: border-color 0.3s;
}

input[type="text"]:focus,
input[type="email"]:focus,
input[type="tel"]:focus,
input[type="password"]:focus {
  border-color: #007bff;
}

button {
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 4px;
  padding: 10px 20px;
  cursor: pointer;
  transition: background-color 0.3s;
}

button:hover {
  background-color: #0056b3;
}


</style>
</head>
<body>

<div class="container">

  <h2>Edit User</h2>
  <%User user = (User)request.getAttribute("user"); %>
  
  <form action="update_profile?userid=<%= user.getId() %>" method="POST">
    <label for="firstName">First Name</label>
    <input type="text" id="firstName" name="firstName" value =<%=user.getFirstName()%> required>

    <label for="lastName">Last Name</label>
    <input type="text" id="lastName" name="lastName" value =<%=user.getLastName()%> required>

    <label for="phoneNumber">Phone Number</label>
    <input type="tel" id="phoneNumber" name="phoneNumber" value =<%=user.getPhoneNo()%> required>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" value =<%=user.getEmail()%> readonly>

    <label for="password">Password</label>
    <input type="password" id="password" name="password" value =<%=user.getPassword()%> required>
    
    <button type="submit">Update</button>
  </form>
</div>
</body>
</html>
 --%>

<%@page import="in.fssa.expressocafe.model.User"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>coffee shop </title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
            integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
            crossorigin="anonymous" referrerpolicy="no-referrer">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/profile.css">
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
        <section class="profile" id="profile">


			 <%@ include file="header.jsp" %>
           <%User user = (User)request.getAttribute("user"); %>
  
 
            <h1 class="heading">
                <i class="fa-solid fa-circle-user"></i> Profile 
            </h1>
         
     <div>
					<%
					String err = (String)request.getAttribute("error");
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
				
				   <div>
					<%
					String err1 = (String)request.getParameter("error");
					%>
					<%
					if (err1 != null) {
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
 				<form action="update_profile?userid=<%= user.getId() %>" method="POST"> 
                <label>FirstName:</label>
                <input type="text" name="firstName" pattern="[A-Za-z\s]+" title="only alphabet" id="user_name"  value="<%= user.getFirstName() %>" class="box" required>
                
                <label>LastName:</label>
                <input type="text" name="lastName" pattern="[A-Za-z\s]+" title="only alphabet" id="user_name1"   value="<%= user.getLastName() %>" class="box" required>
                
                <label>Email_id:</label>
                <input type="email"  id="user_email" value="<%= user.getEmail() %>"class="box" disabled>
               
                <label>Mobile number:</label>
                <input type="tel" name="phoneNumber" id="phoneNumber"  pattern="^[6-9]\d{9}$" title="Enter 10 numbers only and starts above 6"   value="<%= user.getPhoneNo() %>" class="box" >
              
             
                  <button class="box" type="submit">Update</button>
            </form>
        </section>
    </body>
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
