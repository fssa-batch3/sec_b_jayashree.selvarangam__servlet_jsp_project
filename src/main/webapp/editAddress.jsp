

<%@page import="in.fssa.expressocafe.model.DeliveryAddresses"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
		        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
       
    	 <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/footer.css ">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/login.css">
       <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/signup.css"><!-- Replace with your CSS file path -->
    <title>Address page</title>
    <style>
  </style>
    
</head>
<body class="profile">
<jsp:include page="/header.jsp"></jsp:include>
    <h1 class="heading">EDIT ADDRESS</h1>
     	   <div>
					<%
					String err = (String)request.getAttribute("error");
					%>
					<%
					if (err != null) {
					%>
					<script>
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
   <form action="update_address" method="POST" onsubmit="return validateForm()">
       <% DeliveryAddresses d = (DeliveryAddresses)request.getAttribute("editAddress"); %>
    <% int addressId =(int) request.getAttribute("addressId"); %>
    <% int userId =(int) request.getAttribute("userId"); %>
    <input type="hidden" name="address_id" value="<%= addressId %>">
         <input type="hidden" name="user_id" value="<%= userId %>">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" class="box" required pattern="[A-Za-z\s]+" value="<%= d.getTitle()   %>" title="only alphabet">
      
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="<%= d.getAddress() %>"class="box" required >
   
            <label for="land_mark">Land Mark:</label>
            <input type="text" id="city" name="land_mark" value="<%= d.getLandmark() %>"class="box" required >
        <!-- Add more form fields as needed -->

            <label for="city">City:</label>
            <input type="text" id="city" name="city" class="box" required  value="<%= d.getCity()   %>"pattern="[A-Za-z\s]+" title="only alphabet">
        <!--  
            <label for="mobileNumber">Mobile Number:</label>
            <input type="tel" id="mobileNumber" name="mobileNumber" class="box" required>
         -->
       
            <label for="pincode">Pincode:</label>
            <input type="number" id="pincode" name="pincode" value="<%= d.getPincode()   %>" class="box" required>

        <button type="submit" class="btn">Submit</button>
         <script>
        function validateForm() {
        	 
            // Validate pincode (must be 6 digits)
            const pincodeInput = document.getElementById("pincode");
            if (!/^[6]\d{5}$/.test(pincodeInput.value)) {
                alert("Pincode must be a 6-digit number starting with 6.");
                return false; // Prevent form submission
            }
            // You can add more validation rules here for other fields
            // Ask for confirmation before submission
            const isConfirmed = confirm("Are you sure you want to submit this address?");
            return isConfirmed;
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
    
    </form>
</body>
</html>
