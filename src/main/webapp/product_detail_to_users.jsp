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
    </script>


        <!-- <footer>
            <section class="footer">

            <div class="box-container">
            
            <div class="box">
            <h3>our branches</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> India </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> USA </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> France </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> Africa </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> Japan </a>
            </div>
            
            <div class="box">
            <h3>quick links</h3>
            <a href="../../index.html"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="../../pages/order/order-bestseller.html"> <i class="fas fa-arrow-right"></i> order </a>
            <a href="../../pages/payment/payment.html"> <i class="fas fa-arrow-right"></i> pay </a>
            <a href="../../pages/My orders/myorders.html"> <i class="fas fa-arrow-right"></i> myorders </a>
            <a href="../../pages/blogs/blog.html"> <i class="fas fa-arrow-right"></i> blog </a> -->
        <!-- </div> -->
                    
        <!-- <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a> -->
        <!-- <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            </div>
            
            </div>
            </section>
            </footer> --> 
    </body>
  
</html>