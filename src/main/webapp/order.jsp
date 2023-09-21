<%@page import="in.fssa.expressocafe.service.OrderService"%>
<%@page import="in.fssa.expressocafe.model.OrderItems"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="in.fssa.expressocafe.model.Order"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order page</title>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- <link rel="stylesheet" href="../../assets/css/myorder.css"> -->
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
        /* header {
  background-color: #333;
  color: #fff;
  padding: 20px;
} */

 h1 {
  margin: 0;
}

main {
  padding: 20px;
}

.order-list {
  margin-bottom: 30px;
}

.order-item {
  border: 1px solid #ccc;
  padding: 20px;
  margin-bottom: 5vh;
}

.order-item h3 {
  margin: 0;
}

.order-item p {
  margin-bottom: 10px;
}


.req{
   display: flex;
   justify-content: space-between;
    margin-bottom: 7vh;
    padding: 14px 50px 10px 50px;
    background-color: #ececec;
} 
.reorder1{
  padding-top: 2.5vh;
}
.order-details{
  display: flex;
  justify-content: space-around;
    margin-bottom:10vh;
}
.quantity{
  padding-top: 4.5vh;
}

 .order-details .product {
  display:flex;
  align-items: center;
  margin-right: 20px;
}

.review1{
  margin-top: 4vh;
}

.order-details .product img {
  width: 80px;
  height: 80px;
  margin-right: 10px;
  object-fit:cover;
}

.order-details .product-info h4,
.order-details .product-info p {
  margin: 0;
}

.order-total {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-top: 20px;
}

.order-total h4 {
  font-size: 16px;
  margin-right: 10px;
}

.order-total p {
  font-size: 16px;
  font-weight: bold;
}

.order-actions {
  display: flex;
  justify-content: flex-end;
  margin-top: 10px;
}

.reorder-btn,
.cancel-btn {
  padding: 10px 20px;
  margin-left: 10px;
} 
        </style> 
</head>
<body>

<main>
<%@ include file="header.jsp" %>
            <section class="order-list">
              <h2>Recent Orders</h2>
              <div class="whole">
                <ul class="ul-1">
                <% boolean value = false; %>
                <% OrderService orderService = new OrderService(); %>
              <%
                        List<Order> orderList = (List<Order>) request.getAttribute("orderList");
              
              if(orderList != null){
    
				
                        int orderIndex = 0;
                       
                        	 for (Order order : orderList ) {
                    %>      
		                 <%
		                 java.sql.Timestamp  orderdate = order.getOrderedDate();
		                 java.sql.Timestamp  deliveryDate = order.getDeliveryDate();
		                 %>
                 				    <%
              
							    java.text.SimpleDateFormat formatter1 = new java.text.SimpleDateFormat("dd/MM/yyyy");
							    String orderDateStr1 = formatter1.format(orderdate); 
							 /*
							    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("dd/MM/yyyy");
							    String orderDateStr = formatter.format(orderdate);
							    String deliveryDateStr = formatter.format(deliveryDate);
							    java.util.Date currentDate = new java.util.Date();
							    String orderStatus = "";
							    if (currentDate.compareTo(deliveryDate) >= 0) {
							        if (order.isStatus()) {
							            orderStatus = "Delivered";
							        } else {
							            orderStatus = "Cancelled";
							        }
							    } else {
							        if (order.isStatus()) {
							            orderStatus = "Not Delivered";
							        } else {
							            orderStatus = "Cancelled";
							        }
							    } */ 
							    
							/*     java.text.SimpleDateFormat dateTimeFormatter = new java.text.SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
							    String orderDateTimeStr = dateTimeFormatter.format(orderdate);
							    String deliveryDateTimeStr = dateTimeFormatter.format(deliveryDate);
							    java.util.Date currentDate = new java.util.Date();
							    long timeDifferenceMillis = deliveryDate.getTime() - orderdate.getTime();
							    System.out.println("timeDifferenceMillis"+timeDifferenceMillis);
							   
							    int maxDeliveryTimeMinutes = 20; // 20 minutes
							    String orderStatus = "";
							    value = orderService.CheckCancelOrder(order.getOrderId());
							    if (timeDifferenceMillis <= maxDeliveryTimeMinutes * 60 * 1000) {
							    	 System.out.println("maxDeliveryTimeMinutes"+maxDeliveryTimeMinutes * 60 * 1000);
							        if (value) {
							            orderStatus = "Delivered ";
							        } else {
							            orderStatus = "Cancelled";
							        }
							    } else {
							    	 System.out.println("maxDeliveryTimeMinutes"+maxDeliveryTimeMinutes * 60 * 1000);
							        if (value) {
							            orderStatus = "In Progress";
							        } else {
							            orderStatus = "Cancelled";
							        }
							    } */
							    
							  
							    java.util.Date currentDate = new java.util.Date();

							    // Extract the time components from the Timestamps
							    java.text.SimpleDateFormat timeFormatter = new java.text.SimpleDateFormat("HH:mm:ss");
							    String currentTimeStr = timeFormatter.format(currentDate);
							    String deliveryTimeStr = timeFormatter.format(deliveryDate);

							    String orderStatus = "";
							    value = orderService.CheckCancelOrder(order.getOrderId());
							    if (currentDate.compareTo(deliveryDate) >= 0) {
							    	
							        if (value) {
							            orderStatus = "Delivered";
							        } else {
							            orderStatus = "Cancelled";
							        }
							    } else {
							    	 
							        if (value) {
							            orderStatus = "In Progress";
							        } else {
							            orderStatus = "Cancelled";
							        }
							    }
							   

					           %>
                
			<li>
              <div class="order-item">
                            <div class="o-d">
                                <div class="req">
                                    <div class="order1_id">
                                        <h3>Order_id: <%= order.getOrderId() %></h3>
                                    </div>
                                    <div class="order_date">
                                        <p>Ordered on: <%= orderDateStr1 %></p>
                                    </div>
                                    <div class="mode">
                                    <p class="status-text-<%= orderIndex %>">
                                       <%= orderStatus %>
                                    </p>
                                    </div>
                                    <div class="status">
                                        <p>
   											 Ordered on: <%= orderDateStr1  %>
  											  <span class="order-ordered-date-<%= orderIndex %>">
        											<%= order.getOrderedDate() %>
  											  </span>
										</p>
									
                                    </div>
                                </div>
					                                
			
                                <!-- Loop through inner list of products -->
                                <%
                                  int orderItemIndex = 0;
                                  for(OrderItems oi : order.getOrderItems() ){
                                %>
                                      <div class="order-details">
                                    <div class="product">
                                        <img src="<%= request.getContextPath() %>/assets/image/carameljava.jpg" alt="<%= oi.getName() %>">
                                        <div class="product-info">
                                            <h4><%= oi.getName() %></h4>
                                            <p>Price: Rs.<%= oi.getPriceObj().getPrice() %></p>
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <p>Quantity: <%= oi.getQuantity() %></p>
                                    </div>
                                    <div class="reorder1">
                             		 <a href="<%= request.getContextPath() %>/add_to_cart_servlet?product_id=<%= oi.getProduct().getProduct_id() %>&size_id=<%= oi.getSizeId() %>"> <button id="reorder" class="reorder-btn">Reorder</button></a>
                                    </div>
                                </div>
                                 <%
                                orderItemIndex++; // Increment the index
                            }
                                  %>
                                <div class="delivery-address">
                                    <h4>Delivery Address:</h4>
                                    <p>No 4 , adhisankaran st , maha nagar , kanchipuram</p>
                                </div>
                                <div class="order-total">
                                    <h4>Total Price:</h4>
                                    <p>Rs. <%= order.getTotalCost() %></p>
                                </div>
                                <div class="order-actions">
                                    <!-- Add your reorder and cancel buttons here -->
                                      <!-- <button class="reorder-btn">Reorder All</button> -->
                                      <% 	value = orderService.CheckCancelOrder( order.getOrderId()); %>
                                  <!--    ask order.isStatus -->
                                      <%
   										 if ((currentDate.compareTo(deliveryDate) == -1) && (value == true) ) {
  									  %>
          								<a href="<%= request.getContextPath() %>/cancel_order?id=<%= order.getOrderId()%>"><button id="cancel_<%= order.getOrderId() %>"  class="cancel-btn">Cancel</button> </a>
          							<%} %>
                                </div>
                            </div>
                        </div>
                        
                    </li>
                   <%
                    orderIndex++; // Increment the index
                    
                } %>
                  <%} %>
                </ul>
                
             
            </div>
            
                    	  
     
              
        </section>
    </main>

</body>
</html>
<%--  


////////////////

<%@page import="in.fssa.fertagriboomi.service.ReviewsAndRatingsService"%>
<%@page import="in.fssa.fertagriboomi.model.Orders"%>
<%@page import="in.fssa.fertagriboomi.model.DeliveryAddresses"%>
<%@page import="in.fssa.fertagriboomi.model.OrderItems"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400;0,500;0,600;1,400;1,500;1,600&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" type="image/x-icon" href="https://iili.io/J9HTxWb.png">
<link rel="stylesheet" href="<%= request.getContextPath()%>/css/footer.css">
<title>order details</title>
<style>
.order_container {
	padding-top: 20px;
	padding-bottom: 20px;
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
	align-items: flex-start;
	width: 98vw;
}
.single-order {
	box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px,
		rgba(60, 64, 67, 0.15) 0px 1px 3px 1px;
	width: 20vw;
	min-height: 25vh;
	padding: 1.5vh 2vw 3vh 2vw;
	justify-content: center;
	align-items: center;
	text-align: center;
	margin: 2vh 2vw;
	border-radius: 10px;
}
.single-order img {
	width: 15vw;
	height: 23vh;
}
.single-order h3 {
	color: rgb(18, 3, 150);
	min-height: 7vh;
}
.price-details {
	display: flex;
	justify-content: space-around;
	margin: 2vh 0;
	padding: .2vh 3vw;
}
.price-details h4 {
	color: green;
	font-size: 19px;
}
.price-details del {
	color: rgb(138, 1, 63);
	margin-top:.3vh;
}
.head-details {
	height: 5vh;
	background-color: rgb(2, 105, 66);
}
.total-price-details {
	box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px,
		rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
	height: 7vh;
	display: flex;
	justify-content: space-around;
	padding: 2vh 0;
	margin-bottom: 3vh;
}
.total-price-details h2 {
	display: flex;
}
.total-price-details p {
	margin-left: 1vw;
	color: green;
}
.total-price-details del {
	margin-left: 3vw;
	color: rgb(150, 3, 57);
}
.order-delivery-container {
	display: flex;
	justify-content: space-around;
}
.address-details {
	display: flex;
	margin: 1.9vh 0 2vh 5vw;
}
.address-details h3 {
	margin-left: 3vw;
	margin-top: .6vh;
}
.address-details-continer {
	margin-top: 5vh;
}
.address-details .ordate {
	margin-left: 7.5vw;
}
.address-details .deldate {
	margin-left: 7.3vw;
}
.address-details .street {
	margin-left: 8.7vw;
}
.address-details .local {
	margin-left: 10.7vw;
}
.address-details .city {
	margin-left: 13.8vw;
}
.address-details .pincode {
	margin-left: 11.1vw;
}
.address-details .state {
	margin-left: 9.5vw;
}
.address-details .name {
	margin-left: 5.5vw;
}
.address-details .state {
	margin-left: 12.8vw;
}
.address-details .mobile {
	margin-left: 5.7vw;
}
.address-details .status {
	margin-left: 7.6vw;
	color: green;
	font-size: 22px;
	margin-top: 0;
}
.single-order a{
text-decoration:none;
padding:1.5vh 1.5vw .5vh .9vw;
 color:rgb(12, 3, 142);
 font-weight:bold;
 display:flex;
}
.single-order a img{
width:2.5vw;
height:4vh;
margin-top:-1vh;
}
.single-order a:hover{
background-color: rgb(242, 242, 242);
box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 1px 3px 1px;
transition: all 0.4s;
border-radius:5px;
}
.cancel-order{
margin-left:10vw;
margin-top:-5vh;
margin-bottom:10vh;
}
.cancel-order a{
background-color:rgb(1, 93, 53);
  color:white;
  font-size: 18px;
  padding: 1vh 3vw;
  border-radius:5px;
  text-decoration:none;
}
.cancel-order a:hover{
box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
  background-color:rgb(31, 167, 108);
  transition: all 0.4s;
}
</style>
</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>
<%
java.sql.Timestamp orderdate = null; // Initialize with null or any default value
java.sql.Timestamp deliveryDate = null; // Initialize with null or any default value
java.sql.Timestamp productOrder = null;
java.sql.Timestamp productDeliver = null;
int totalPrice = 0;
int totalDiscount = 0;
%>
<%
List<OrderItems> ordersList = (List<OrderItems>) request.getAttribute("ORDER_ITEMS_LIST");
DeliveryAddresses address = (DeliveryAddresses) request.getAttribute("ADDRESS_DETAILS");
Orders order = (Orders) request.getAttribute("ORDERS");
%>
<div class="total-orders">
    <div class="order_container">
        <%
        int orderList = ordersList.size();
        for (int i = 0; i < orderList; i++) {
            OrderItems orders = ordersList.get(i);
            if (i == 0) {
                orderdate = orders.getOrderDate();
                deliveryDate = orders.getDeliveryDate();
                productOrder = orders.getOrderDate();
                productDeliver = orders.getDeliveryDate();
            }
            totalPrice += orders.getPrice();
            totalDiscount += orders.getDiscount();
            java.util.Date currentDateValue = new java.util.Date();
        %>
        <div class="single-order">
            <img src="<%=orders.getProductImage()%>"
                alt="<%=orders.getProductName()%>">
            <h3><%=orders.getProductName()%></h3>
            <div class="price-details">
                <h4>
                    &#8377;<%=orders.getPrice() - orders.getDiscount()%></h4>
                <del>
                    &#8377;<%=orders.getDiscount()%></del>
            </div>
            <%
                if (currentDateValue.compareTo(productDeliver) >= 0 && order.isStatus() ) {
                	boolean isReviewsExists = new ReviewsAndRatingsService().findRatingAndReiewsByOrderItemId(orders.getId());
                	if(!isReviewsExists){
                   %>
            <a href="<%= request.getContextPath()%>/my_order/order_details/review_ratings?product_id=<%=orders.getProductId() %>&order_item_id=<%=orders.getId() %>&name=<%=address.getPersonName() %>&order_id=<%=order.getId() %>"><img src="<%= request.getContextPath()%>/assets/images/star.webp" alt="facebook">Rate & Review Product</a>
            <%}} %>
        </div>
        <%
        }
        %>
    </div>
</div>
<div class="head-details"></div>
<div>
    <div class="total-price-details">
        <h2>
            Total Price:
            <p>
                &#8377;<%=totalPrice - totalDiscount%></p>
            <del>
                &#8377;<%=totalPrice%></del>
        </h2>
        <h2>
            Total Discount:
            <p>
                &#8377;<%=totalDiscount%></p>
        </h2>
    </div>
    <%
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("dd/MM/yyyy");
    String orderDateStr = formatter.format(orderdate);
    String deliveryDateStr = formatter.format(deliveryDate);
    java.util.Date currentDate = new java.util.Date();
    String orderStatus = "";
    if (currentDate.compareTo(deliveryDate) >= 0) {
        if (order.isStatus()) {
            orderStatus = "Delivered";
        } else {
            orderStatus = "Cancelled";
        }
    } else {
        if (order.isStatus()) {
            orderStatus = "Not Delivered";
        } else {
            orderStatus = "Cancelled";
        }
    }
    %>
    <div class="order-delivery-container">
        <div class="address-details-continer">
            <div class="address-details">
                <h2>Ordered date:</h2>
                <h3 class="ordate"><%=orderDateStr%></h3>
            </div>
            <div class="address-details">
                <h2>Delivery Date:</h2>
                <h3 class="deldate"><%=deliveryDateStr%></h3>
            </div>
            <div class="address-details">
                <h2>Steet Name:</h2>
                <h3 class="street"><%=address.getStreetName()%>,
                </h3>
            </div>
            <div class="address-details">
                <h2>Location:</h2>
                <h3 class="local"><%=address.getLocation()%>,
                </h3>
            </div>
            <div class="address-details">
                <h2>City:</h2>
                <h3 class="city"><%=address.getCity()%>,
                </h3>
            </div>
            <div class="address-details">
                <h2>Pincode:</h2>
                <h3 class="pincode"><%=address.getPincode()%>,
                </h3>
            </div>
            <div class="address-details">
                <h2>Customer Name:</h2>
                <h3 class="name"><%=address.getPersonName()%>,
                </h3>
            </div>
            <div class="address-details">
                <h2>State:</h2>
                <h3 class="state"><%=address.getState()%>,
                </h3>
            </div>
            <div class="address-details">
                <h2>Mobile Number:</h2>
                <h3 class="mobile"><%=address.getMobileNumber()%>.
                </h3>
            </div>
            <div class="address-details">
                <h2>Order Status:</h2>
                <h3 class="status"><%=orderStatus%></h3>
            </div>
        </div>
        <div>
            <img
                src="<%=request.getContextPath()%>/assets/images/order_delicver-transformed.jpeg"
                alt="shopping image">
        </div>
    </div>
 <div class="cancel-order">
    <%
    if (currentDate.compareTo(deliveryDate) == -1 && order.isStatus()) {
    %>
    <a href="<%=request.getContextPath()%>/order_details/cancel_order?order_id=<%=order.getId() %>">Cancel Order</a>
    <%
    }
    %></div>
</div>
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html> --%>