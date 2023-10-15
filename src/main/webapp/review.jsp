<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>coffee shop</title>

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />

    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/review.css " />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css" />
    <link rel="stylesheet" href="../../assets/css/footer.css " />
    <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
          * { font-family: 'Aclonica', sans-serif;
font-family: 'Merienda', cursive;
font-family: 'Montserrat', sans-serif;
font-family: 'Poppins', sans-serif;
font-family: 'Quicksand', sans-serif;
        }
        </style>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      /* body{
            height:flex;
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;

            /* background: linear-gradient(45deg,purple,blue); */
      /* } */

      .star {
        font-size: 3rem;
        color: #ff9800;
        background-color: unset;
        border: none;
      }

      .rating_heading {
        color: teal;
       
        animation: scale-up 1s ease;
      }
      .rating_heading span{
        font-size: 1.4rem;
        font-weight: bold;
      }
      .star_rating {
    user-select: none;
    background-color: teal;
    padding: 0.9rem 1rem;
    margin: 2rem;
    border-radius: 0.4rem;
    text-align: center;
    animation: slide-up 1s ease;
}

      .star:hover {
        cursor: pointer;
      }

      .current_rating {
        color: #ff9800;
      }

      @keyframes slide-up {
        0% {
          opacity: 0;
          transform: translateY(50px);
        }

        100% {
          opacity: 1;
          transform: translateY(0px);
        }
      }
    </style>
  </head>

  <body>
    <%@ include file="header.jsp" %>

    <section class="profile" id="profile">
      <section class="form">
        <form>
        <h1 class="rating_heading"><span>Rating</span> </h1>

        <div class="star_rating">
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <button class="star">&#9734;</button>
          <p class="current_rating">0</p>
        </div>

        <textarea
          placeholder="Write your valuable feedback here"
          title="Use only lowercase(abc...z)"
          pattern="[a-z]{3,}"
          class="box"
          id="review"
         
          required="true"
        ></textarea>
        <!-- <button class="btn"><a href="../../index.html">Submit</a> </button>  -->
        <a href="" id="review_submit"> <button type="button" class="btn" id="submit">submit</button> </a>
      </form>
      </section>
    </section>
  
  </body>
<script>
  // Add an event listener to the textarea for input events
  const textarea = document.querySelector("#review");
  textarea.addEventListener("input", function () {
    // Get the current text length
    const currentLength = textarea.value.length;

    // Check if it exceeds the limit
    if (currentLength > 20) {
      // Trim the text to 30 characters
      textarea.value = textarea.value.slice(0, 20);
    }
  });
</script>
  <script>
  window.onpopstate = function(event) {
      // Reload the current page
      window.open(location.href, '_self');
  };

  
    localStorage.setItem("star_value", JSON.stringify("0"));
    const allStars = document.querySelectorAll(".star");
    const current_rating = document.querySelector(".current_rating");
    // console.log(allStars)
    allStars.forEach((star, i) => {
      star.onclick = function () {
        // console.log(i+1)
        
        const current_star_level = i + 1;
        current_rating.innerText = current_star_level;
        localStorage.setItem(
          "star_value",
          JSON.stringify(current_rating.innerText)
        );
        allStars.forEach((star, j) => {
          if (current_star_level >= j + 1) {
            //   console.log(j+1)
            star.innerHTML = "&#9733";
          } else {
            star.innerHTML = "&#9734";
          }
        });
      };
    });
    
    
    function getQueryParam(name) {
        const urlSearchParams = new URLSearchParams(window.location.search);
        return urlSearchParams.get(name);
      }

      // Get the order_id and user_id from the URL
      const order_id = getQueryParam('order_id');
      const user_id = getQueryParam('user_id');

    const submit = document.getElementById("submit");
    submit.addEventListener("click", function () {
     
      const stars = JSON.parse(localStorage.getItem("star_value"));
      console.log(stars);
      const review_value = document.querySelector("#review").value;
      const reviewLink = document.getElementById("review_submit");
      if (review_value === "") {
        alert("enter the review");
      }
      else if (current_rating.innerText == "0") {
        alert("fill the stars");
      }
      else{
    	  const reviewLinkHref = '<%= request.getContextPath() %>/create_review?review_star=' + stars + '&review_message=' + review_value + '&order_id=' + order_id + '&user_id=' + user_id;

          
    	  reviewLink.href = reviewLinkHref;
         
          alert('Thank you for your review');
    	  
      }
      
      
      
      
     // window.location.href = `../../pages/My orders/myorders.html`;
    });
  
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
