<%@page import="in.fssa.expressocafe.model.DeliveryAddresses"%>
<%@page import="in.fssa.expressocafe.service.DeliverAddressService"%>
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
              <div>
					<% String errorMessage = (String) request.getAttribute("errorMessage"); %>

<% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <p class="error-message"><%= errorMessage %></p>
<% } %>
					
				</div>
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
                                        <h3>Order_id: <%= order.getOrderCode() %></h3>
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
   											  Packaging Type: <%= order.getPackageType()  %>
  											  
										</p>
									
                                    </div>
                                </div>
                                <!-- Loop through inner list of products -->
                                <%
                                  int orderItemIndex = 0;
                                  for(OrderItems oi : order.getOrderItems()){
                                %>
                                      <div class="order-details">
                                    <div class="product">
                                        <img src="<%= request.getContextPath() %>/assets/image/carameljava.jpg" alt="<%= oi.getName() %>">
                                        <div class="product-info">
                                            <h4><%= oi.getName() %></h4>
                                            
                                             <% if(oi.getSizeId()==1){ %>
					                         <div class=" beverage-message">Tall(354 ML) .398 kcal</div>
					                         <%}else if(oi.getSizeId()==2){ %>
					                         <div class=" beverage-message">Medium(354 ML) .398 kcal</div>
					                         <%}else{ %>
					                            <div class=" beverage-message">Short(354 ML) .398 kcal</div>
					                         <%} %>
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
                                     <% DeliveryAddresses deliveryAddress = new DeliverAddressService().findAddressById(order.getAddressId()) ;%>
                                    <p> <%= deliveryAddress.getAddress() %> <%= deliveryAddress.getLandmark() %><%= deliveryAddress.getCity() %></p>
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
          								<a href="<%= request.getContextPath() %>/cancel_order?id=<%= order.getOrderId()%>" onclick="cancel()"><button id="cancel_<%= order.getOrderId() %>"  class="cancel-btn">Cancel</button> </a>
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
    <script>
    function cancel() {
        // User is not logged in, show an alert.
        alert("the order will be cancelled");
        return true; // Prevent the link from being followed.
   
	}
    </script>
    


</body>
</html>
