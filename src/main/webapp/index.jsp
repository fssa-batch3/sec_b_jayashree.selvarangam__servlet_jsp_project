<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.service.ProductService"%>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.DAO.ProductDAO"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>coffee shop </title>


        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        <link rel="stylesheet" href="./assets/css/style.css ">
        <link rel="stylesheet" href="./assets/css/header.css ">
        <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
        
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
    		<jsp:include page="/header.jsp"></jsp:include>
      <!-- <header class="header">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="fas fa-bars"></label>
            <a href="../coffeeshop/index.html" class="logo"> Coffee <i class="fas fa-mug-hot"></i> </a>
        
            <nav class="navbar">
            <a href="./index.html">Home</a>
            <a href="./pages/order/order-bestseller.html">Order</a>
            <a href="./pages/payment/payment.html">Pay</a>
            <a href="./pages/My orders/myorders.html">My orders</a>
            <a href="../../pages/blogs/blog.html">Blogs</a>--> 
        <!-- </nav>
            <div class="icons">
            <a href="./pages/add to cart/addtocart.html" class="fas fa-shopping-cart"></a>
            <a href="./pages/profile/profile.html" class="fas fa-user"></a>
            </div>
            <a href="./pages/login/login.html" class="btn">Login</a>
        
            </header> -->
        <section class="home" id="home">

            <div class="row">

                <div class="content">
                    <h3>Be delighted with Expresso Cafe's coffee </h3>
                    <a href="#" class="btn">Order now</a>
                </div>
                <div class="image">
                    <img src="./assets/image/home-img-1.png" class="main-home-image" alt="">
                </div>
            </div>

            <div class="image-slider">
                <img src="./assets/image/home-img-1.png" alt="">
                <img src="./assets/image/home-img-2.png" alt="">
                <img src="./assets/image/home-img-3.png" alt="">
            </div>
        </section>

        <!-- home section ends -->
        <section class="latest-recommendation" id="latest-recommendation">
            <div class="latest">
                <h3 style="color:teal;">Latest Recommendation</h3>
       
                <div class="coffee-products">
		
						<%ProductService prod = new ProductService();  %>
						<% List<Product> productList = prod.getAllProducts(); %>
						<% for(Product product : productList ){ %>

                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="<%= request.getContextPath() %>/assets/image/javachip.jpg" width="80px" height="80px" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title"><%= product.getName() %></div>
                        <div class=" coffee-message">Medium (350ml) 290 kcal</div>
                       <!--  <div class=" coffee-message">Tall(394ml)392kcal</div> -->
                        </div>
                        </div>
                        <div class="coffee-cost-details">
                         <%for (Price price : product.getPriceList()) {%>
			                <%if(price.getSize().getSizeId()==2){ %>
							<div class="cost">Rs <%= price.getPrice()   %></div>
							<% } %>
			             <% } %>
			           
                         <div class="add-item"><a href="product_detail?product_id=<%=product.getProduct_id()%>"><button>add item</button></a></div>
                   
                        </div>
                        </div>
                        
            <% } %>
                </div>
            </div>
        </section>

        <section class="about" id="about">
            <h1 class="heading">
                <span>ABOUT US </span> 
            </h1>
            <div class="row">

                <div class="video-container">
                    <video src="./assets/image/video.mp4  " loop autoplay muted></video>
                    <h3>ENJOY YOUR COFFEE</h3>
                </div>
                <div class="content">
                    <h3>Why choose us?</h3>
                    <p>
                        Welcome to Expresso cafe, where we bring the finest coffee directly to your doorstep.
                         We are a team of passionate coffee enthusiasts dedicated to delivering an exceptional 
                         coffee experience right to your home or office.
                          Our skilled baristas are trained to craft each cup of coffee with care, ensuring that
                          every sip is a delightful moment of indulgence.                    
</p>
<p>          
 We are excited to be part of your daily coffee ritual and to share our love for exceptional coffee with you. Order now and elevate your coffee experience with Expresso Cafe.</p>
       
                </div>

            </div>

        </section>

    </body>
    <!-- <script src="./main.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script> -->

    <script src="./index.js"></script>

    <script src="./pages/order/header.js"></script>
    <script src="./components/footer.js"></script>
<%-- <script src="<%=request.getContextPath()%>/assets/js/search.js"> </script> --%>
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