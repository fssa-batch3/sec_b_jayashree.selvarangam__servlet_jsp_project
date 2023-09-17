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
            <section class="order-list">
              <h2>Recent Orders</h2>
              <div class="whole">
                <ul class="ul-1">
              <%
                        List<Order> orderList = (List<Order>) request.getAttribute("orderList");
                        int orderIndex = 0;
                       
                        	 for (Order order : orderList ) {
                    %>      
                 
                
<li>
              <div class="order-item">
                            <div class="o-d">
                                <div class="req">
                                    <div class="order1_id">
                                        <h3>Order_id: <%= order.getOrderId() %></h3>
                                    </div>
                                    <div class="order_date">
                                        <p>Ordered on: <%= order.getOrderedDate() %></p>
                                    </div>
                                    <div class="mode">
                                    <p class="status-text-<%= orderIndex %>">
                                       
                                    </p>
                                    </div>
                                    <div class="status">
                                        <p>
   											 Ordered on: <%= order.getOrderedDate() %>
  											  <span class="order-ordered-date-<%= orderIndex %>">
        											<%= order.getOrderedDate() %>
  											  </span>
										</p>
										<p>
										    Delivered on: <%= order.getDeliveryDate() %>
										    <span class="order-delivered-date-<%= orderIndex %>">
										        <%= order.getDeliveryDate() %>
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
                                        <img src="" alt="<%= oi.getName() %>">
                                        <div class="product-info">
                                            <h4><%= oi.getName() %></h4>
                                            <p>Price: Rs.<%= oi.getPriceObj().getPrice() %></p>
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <p>Quantity: <%= oi.getQuantity() %></p>
                                    </div>
                                    <div class="reorder1">
                             		 <a href="<%= request.getContextPath() %>/add_to_cart_servlet?product_id=<%= order.getProduct_id() %>&size_id=<%= order.getSizeId() %>"> <button id="reorder" class="reorder-btn">Reorder</button></a>
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
          						<a href="<%= request.getContextPath() %>/cancel_order?id=<%= order.getOrderId()%>"><button id="cancel_8"  class="cancel-btn">Cancel</button> </a>
                                </div>
                            </div>
                        </div>
                    </li>
                   <%
                    orderIndex++; // Increment the index
                    
                } %>
               
                </ul>
            </div>
        </section>
    </main>
<script>
    // Function to update order status for a single order
    function extractTime(dateStr) {
    const timeMatch = dateStr.match(/\d{2}:\d{2}:\d{2}/); // Match HH:MM:SS
    if (timeMatch) {
        return timeMatch[0]; // Extracted time
    }
    return null; // Return null if no time is found
}

    console.log("in");
    function updateOrderStatus(orderIndex) {
        const orderedDateStr = document.querySelector(".order-ordered-date-"+orderIndex).textContent;
        const deliveredDateStr = document.querySelector(".order-delivered-date-"+orderIndex).textContent;
        console.log(orderedDateStr);
        console.log(orderedDateStr);
        const orderedTime = extractTime(orderedDateStr);
        const deliveredTime = extractTime(deliveredDateStr);

        const now = new Date();
        const currentTime = now.toLocaleTimeString('en-US', { hour12: false }); // Get current time (HH:MM:SS)

        const statusElement = document.querySelector(".status-text-" + orderIndex);
        if (currentTime >= deliveredTime) {
            statusElement.textContent = 'Delivered';
        } else if (currentTime >= orderedTime) {
            statusElement.textContent = 'In Progress';
        } else {
            statusElement.textContent = 'Pending';
        }
    }

    // Function to update order status for all orders
    function updateAllOrderStatus() {
        // Get the total number of orders
        const totalOrders = <%= orderList.size() %>;

        // Update status for each order
        for (let i = 0; i < totalOrders; i++) {
            updateOrderStatus(i);
        }
    }

    // Periodically update status for all orders (e.g., every minute)
    setInterval(updateAllOrderStatus, 60000); // 60000 milliseconds = 1 minute
    updateAllOrderStatus();
</script>

           
</body>
</html>