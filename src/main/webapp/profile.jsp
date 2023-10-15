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
			   
				</div>
             <% User user =  (User) request.getAttribute("user"); %> 
            <h1 class="heading">
                <i class="fa-solid fa-circle-user"></i> Profile 
            </h1>
            

         
            <form action="" name="add-pr">

                <label>FirstName:</label>
                <input type="text" id="user_name"  pattern="[A-Za-z.]+"
                title="Enter alphabet without space" value="<%= user.getFirstName() %>" class="box" disabled>
                
                <label>LastName:</label>
                <input type="text" id="user_name"  pattern="[A-Za-z.]+"
                title="Enter alphabet without space" value="<%= user.getLastName() %>" class="box" disabled>
                
                <label>Email_id:</label>
                <input type="email" id="user_email" value="<%= user.getEmail() %>" class="box" disabled>
               
                <label>Mobile number:</label>
                <input type="text" id="user_mobilenumber" value="<%= user.getPhoneNo() %>" class="box" >
              
              <a href="<%= request.getContextPath() %>/edit_profile?userId=<%=user.getId()   %>"> <button type="button"class="btn" id="edit1">edit
                </button></a>
               <!--  <button type="button" class="btn" id="save" style="display: none">Save
                </button>
 -->
               <!--  <span class="save1"> 
                    <a href="../../index.html">
                        <button class="btn" type="button" id="logout">logout
                        </button></a> </span>  -->
            </form>
        </section>
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
        
    </body>
    </html>
