<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product detail </title>
   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" 
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/productdetail1.css ">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/footer.css ">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
      <script src="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.all.min.js
		"></script>
     <style>
    
   
     
     </style>
     
    </head>
    <body>
    	
   
    			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@ include file="header.jsp" %>
        <section class="about-product" id="about-product">
        
            <div class="row">
        
                <div class="image">
                <img src="https://iili.io/J97on94.jpg" alt="">
               
                </div>
                <%Product product = (Product) request.getAttribute("prod"); %>
        		
                <div class="content">
                <h3 class="heading"><%= product.getName() %></h3>
				 <p class="calorie" id="size_show">Medium(390 ML) .290 Kcal</p>
                
                <p class="detail"><%= product.getDescription() %></p>

                <%for (Price price : product.getPriceList()) {%>
                <%if(price.getSize().getSizeId()==2){ %>
                
                <p class="cost" id="price">Rs.<%= price.getPrice() %></p>
                <%} %>
                <%} %>
                
                <div class="buttons">
                <div class="size">
                <button class="btn-button" value="1" onclick="displayPrice('LARGE',1)"> tall</button>
                <button class="btn-button" value="2" onclick="displayPrice('MEDIUM',2)">medium</button>
                <button class="btn-button" value="3" onclick="displayPrice('SMALL',3)" >short</button> 
                </div>
                <div class="inc-dec-button">
               
                </div>
                <div class="add-item-cart">
                <% if (session.getAttribute("loggedUser") != null) { %>
                <a id="addToCartLink" href="<%= request.getContextPath() %>/add_to_cart_servlet?product_id=<%= product.getProduct_id()%>&size_id=2"><button class="btn-button">Add to the cart</button></a>
            	<% } else{%>
            	 <a id="addToCartLink" onclick="addToCart()"><button class="btn-button">Add to Cart</button></a>
            	<%} %>
                </div>
                </div>
                </div>
                </div> 
        </section>
      
  <script>
        var productPrices = [];

        var productPricesJson = '<c:out value="${productPricesJson}" />';
     // Use unescape to decode HTML entities
      var validJsonString = productPricesJson.replace(/&#034;/g, '"');

// Parse the JSON data


        // Now parse the JSON data
         
        if (productPricesJson) {
        	 productPrices = JSON.parse(validJsonString);
        	console.log(productPrices);
        }

        var  priceDisplay = document.getElementById("price");
        var priceFound = false;

        function displayPrice(size, sizeId) {
            for (var i = 0; i < productPrices.length; i++) {
                if (productPrices[i].size === size) {
                    priceDisplay.innerText = "Rs. " + productPrices[i].price;
                    priceFound = true;
					
                    var sizeShow = document.getElementById("size_show");
                    if(sizeId==1){
                    	sizeShow.innerText = "Tall(450 ML) .375 Kcal";
                    }else if(sizeId==2){
                    	sizeShow.innerText = "Medium(350 ML) .290 Kcal";
                    }else{
                    	sizeShow.innerText = "Short(250 ML) .190 Kcal";
                    }
                    
                    
                    
                    // Update the href of the add to cart link with the selected size_id
                    var addToCartLink = document.getElementById("addToCartLink");
                    addToCartLink.href = "<%= request.getContextPath() %>/add_to_cart_servlet?product_id=<%= product.getProduct_id()%>&size_id=" + sizeId;

                    break;
                }
            }
            
            
        }

        function addToCart() {
            <% if (session.getAttribute("loggedUser") == null) { %>
                // User is not logged in, show an alert.
                alert("Please log in to buy products.");
                return false; // Prevent the link from being followed.
            <% } %>
            }
        
        
        function checkExistInBagParameter() {
          	 
          	 
            const url = new URL(window.location.href);
            const existInBag = url.searchParams.get("existInBag");
            console.log("existInBag"+existInBag);
            if (existInBag == "true") {
            	console.log("innn existInBag"+existInBag);
            	Swal.fire({
            	    icon: 'warning',
            	    text: 'Product already exists in the bag!',
            	    showConfirmButton: false,
            	    customClass: {
            	        popup: 'swal-wide', // Applies the custom class to the modal popup
            	        icon: 'teal-text' // Applies the custom class to the modal title
            	        // Applies the custom class to the modal content
            	    },
            	    timer: 2000
            	});
                // Remove the existInBag parameter from the URL
                url.searchParams.delete("existInBag");
                // Delay for 2 seconds (2000 milliseconds) before redirection
                setTimeout(function() {
                    // Redirect to the updated URL without existInBag parameter
                    window.location.href = url.toString();
                }, 2000);
            }
        }

     
        
        window.addEventListener('DOMContentLoaded', function () {
            checkExistInBagParameter();
        });
     
        
        
    </script>



    </body>
  
</html>