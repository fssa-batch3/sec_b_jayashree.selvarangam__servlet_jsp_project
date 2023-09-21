<%@page import="java.text.DecimalFormat"%>
<%@page import="in.fssa.expressocafe.model.Cart"%>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="in.fssa.expressocafe.service.ProductService"%>
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
 
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/addtocart.css ">
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
	<%@ include file="header.jsp" %>
	
	<%  List<Cart> cartList = (List<Cart>) session.getAttribute("cart_list"); %>
	<% if(cartList != null){ %>
	<%double total =0; %>
	<%
	DecimalFormat dcf = new DecimalFormat("#.##");
	request.setAttribute("dcf", dcf);
	
	List<Cart> cart_list = (List<Cart>) session.getAttribute("cart_list");
	List<Cart> cartProduct = null;

	if (cart_list != null) {
		ProductService pService = new ProductService();
		 total = pService.getTotalCartPrice(cartList);	 
         for (Cart cart : cartList) {
             cart.setTotalPrice(total);
         }
		request.setAttribute("total", total);
		session.setAttribute("total", total);
		request.setAttribute("cart_list", cart_list);
	}
	%>
        <!-- <header class="header">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="fas fa-bars"></label>
            <a href="../../index.html" class="logo"> Coffee<i class="fas fa-mug-hot"></i> </a>
        
            <nav class="navbar">
            <a href="../../index.html">Home</a>
            <a href="../../pages/order/order-bestseller.html">Order</a>
            <a href="../../pages/payment/payment.html">Pay</a>
            <a href="../../pages/My orders/myorders.html">My orders</a>
            <a href="../../pages/blogs/blog.html">Blogs</a>--> 
        <!-- </nav>
            <div class="icons">
            <a href="../../pages/add to cart/addtocart.html" class="fas fa-shopping-cart"></a>
            <a href="../../pages/profile/profile.html" class="fas fa-user"></a>
            </div>
            <a href="../../pages/login/login.html" class="btn">Login</a>
        
            </header> -->
        <h2 class="heading-cart">Your cart</h2>
        <h3 class="heading-cart"> MOBILE ORDER AND PAY  </h3>
       <section class="whole">
        <% for (Cart cart: cartList) { %>
        <section class="Yourcart"> 
            <div class="beverage">
                <div class="beverage-container">
                    <div class="beverage-image">
                        <img src="<%= request.getContextPath() %>/assets/image/redhatmocha.jpg" alt="">
                    </div>
                    <div class="beverage-content">
                        <div class="beverage-vegimg">
                            <img src="../../assets/image/veg.svg" alt="">
                        </div>
                        <div class="beverage-title"> <%= cart.getName() %> </div>
                    </div>
                    <div class="inc-dec-button">
                        <div>
                            <a href="quantity-inc-dec?action=dec&product_id=<%=cart.getProduct_id() %>&size_id=<%= cart.getSizeId()  %>">
                                <span class="minus">
                                    <i class="fa-solid fa-minus"></i>
                                </span>
                            </a>
                            <span class="num"><%= cart.getQuantity() %></span>
                         
                            <a href="quantity-inc-dec?action=inc&product_id=<%=cart.getProduct_id()  %>&size_id=<%= cart.getSizeId()%>">
                                <span class="plus">
                                    <i class="fa-solid fa-plus"></i>
                                </span>
                            </a>
                        </div>
                    </div>
                    <div class="beverage-costdetail">
                      <% double o = cart.getPrice() * cart.getQuantity(); %>
                       
					  <div class="cost">Rs.<%= String.format("%.2f", o) %></div>

                     <!--    <div class="Goback"><a href="#">Go back</a></div> -->
                        <a href="<%= request.getContextPath() %>/remove-from-cart?product_id=<%=cart.getProduct_id() %>&size_id=<%= cart.getSizeId()%>">

                        <button class="Go_back" >remove</button>
                  
                    </a>
                    </div>
                </div>
            </div>
        </section>
        <% } %>
    </section> 
        
        <!-- <p class="add-items">
            <i class="fa-solid fa-plus"></i>
            <a href="../../pages/order/order-drinks.html"> Add more items</a>
        </p> -->
        
        <section class="rewards">
            <div class="reward-container">
                <div class="reward-title">
                    <h3>Rewards and offers</h3>
                </div>
                <div class="reward-value">
                    <p>0 offers</p>
                </div>
            </div>

        </section>
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

        <section class="pickup">
            <div class="pickup-details">
                <h2 class="pickup-heading">Your additionals</h2>
                <div class="pickup-choices">
                    <div class="choices">
                        <div class="radio"> 
                            <input type="radio" class='e' id="1" name="delivery_type" value="takeaway">
                        </div>
                        <div class="name">
                            <label for="1">Starry night</label>
                        </div>

                    </div>
                    <div class="choices">
                        <div class="radio">
                            <input type="radio" id="2" class='e' name="delivery_type" value="dine_in">
                        </div>
                        <div class="name">
                            <label for="2">Van Gogh's Palette</label>
                        </div>
                    </div>
                    <div class="choices">
                        <div class="radio">
                            <input type="radio" id="3" class='e' name="delivery_type" value="delivery">
                        </div>
                        <div class="name">
                            <label for="3">Cafe Under the Stars</label>
                        </div>
                    </div>
                </div>
        
            </div>
        </section>
        <section class="delivery">
            <div class="address">
                <div class="delivery-details">
                    <div class="delivery-name">
                        Delivery to <span class="name" id="del-name">Jane</span>
                    </div>
                    <div class="delivery-address" id="del-address"></div>
                    No 4 , adhisankaran st , maha nagar , kanchipuram
                </div>
    
                <div class="change-address">
                    <a href="../../pages/fill forms/change-address.html">
                        <button>Select address</button>
                    </a> 
                </div>
            </div>
</section>
 
        <section class="billdetails">
            <div class="bill-container">
                <h3>Bill details</h3>
                <div class="bill-list">
            
                    <div class="bill-details">
                        <div class="bill-name">
                            <p id="total">Item Total</p>  
                        </div>
                        <div class="amount" id="amount">
                    
                 		<p>Rs. <%= String.format("%.2f", total) %> </p>
                        </div>
                    </div>
                    <!-- <div class="bill-details">
                        <div class="bill-name">
                        Discount
                        </div>
                        <div class="amount">
                        no offers
                        </div>
                        </div> -->
                    <div class="bill-details">
                        <div class="bill-name">
                            Service charges
                        </div>
                        <div class="amount">
                            0 charges
                        </div>
                    </div>
                    <div class="bill-details">
                        <div class="bill-name">
                            Taxes
                        </div>
                        <div class="amount">
                            Included taxes
                        </div>
                    </div>
                    <div class="bill-details-grand-total">
                        <div class="bill-name">
                            Grand Total
                        </div>
                        <div class="amount" id="total_items">
                 		<p>Rs. <%= String.format("%.2f", total) %> </p>
                        </div>
                    </div>

                </div>
            </div>

        </section>
        <section class="pay">
            <div class="pay-container">
                <div class="pay-title">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    <span>Cash on delivery only </span>
                </div>
                <div class="button-value">
                    <!-- <a href="../../pages/My orders/myorders.html"> -->
                  <a href="" id="btn_order1"> <button id="btn_order">Place your order</button></a> 
                    <!-- <button id="btn_order" onclick="radio()">Summa oru Button</button> -->
                    <!-- </a> -->
                </div>
            </div>

        </section>
        <%}else{ %>
         <h2 class="heading-cart">Your cart</h2>
        <h3 class="heading-cart"> ADD PRODUCT IN THE CART  </h3>
        <%} %>
    </body>
<script>
    // Get references to the button and anchor
    const orderButton = document.getElementById('btn_order');
    const orderLink = document.getElementById('btn_order1');

    orderButton.addEventListener('click', function () {
        // Find the selected radio button
        let selectedValue = null;
        const delivery = document.querySelectorAll('input[name="delivery_type"]');
        for (let i = 0; i < delivery.length; i++) {
            const element = delivery[i];
            if (element.checked === true) {
                selectedValue = element.value;
                break;
            }
        }

        // If no radio button is selected, show an alert
        if (selectedValue === null) {
            alert('Please select a packaging option.');
        } else {
            // Set the href attribute of the anchor element
            console.log(selectedValue);
            const orderLinkHref = '<%=request.getContextPath()%>/place_order?packaging_type=' + selectedValue;

            
            orderLink.href = orderLinkHref;
            console.log(selectedValue);
            console.log(orderLinkHref);
            alert('Successfully selected a packaging option.');
        }
    });
</script>
    

</html>
