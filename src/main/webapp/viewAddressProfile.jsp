
    
<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.model.DeliveryAddresses"%>
<%@page import="java.util.List"%>
<html>
<head>


<link rel="stylesheet" href="chrome-extension://mcgbeeipkmelnpldkobichboakdfaeon/css/github-dark.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/highlight.min.js"></script>
		<!-- and it's easy to individually load additional languages -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/languages/go.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
       <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
        integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    
    <link rel="stylesheet" href="../assets/css/header.css">
        


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
/* Unique CSS for the Order Section */
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

.req {
  display: flex;
  justify-content: space-between;
  margin-bottom: 7vh;
  padding: 14px 50px 10px 50px;
  background-color: #ececec;
}

.reorder1 {
  padding-top: 2.5vh;
}

.order-details {
  display: flex;
  justify-content: space-around;
  margin-bottom: 10vh;
}

.quantity {
  padding-top: 4.5vh;
}

.order-details .product {
  display: flex;
  align-items: center;
  margin-right: 20px;
}

.review1 {
  margin-top: 4vh;
}

.order-details .product img {
  width: 80px;
  height: 80px;
  margin-right: 10px;
  object-fit: cover;
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
 	<div>
					<%
					String err = request.getParameter("error");
					%>
					<%
					if (err != null) {
					%>
						<script>
					    // Display a Swal alert when the 'err' parameter is not null
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
<% List<DeliveryAddresses> addressList1 = (List<DeliveryAddresses>) request.getAttribute("addressList");  %>
            <section class="order-list">
              <h2>Your Address</h2>
              <div class="whole">
                <ul class="ul-1">
                
              <% for(DeliveryAddresses deliveryAddress : addressList1){ %>
			<li>
              <div class="order-item">
                            <div class="o-d">
                                <div class="req">
                                    <div class="order1_id">
                                        <h3>Name: Jayashree</h3>
                                    </div>
                                    <div class="order_date">
                                        <p>Created at: 09-22-23</p>
                                    </div>
                                    
                                    <div class="status">
                                     <% if( deliveryAddress.getStatus() == 1 ){ %>
                                        <p>
   										Default Address
  											 
										</p>
										<%} %>
									
                                    </div>
                                </div>
					                                
		  						  <div class="order-details">
                                    <div class="product">
                                        <img src="https://iili.io/JJz3Vtf.png" alt="">
                                        <div class="product-info">
                                            <h4><%= deliveryAddress.getTitle() %></h4>
                                           
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <p> <%= deliveryAddress.getAddress() %> <%= deliveryAddress.getLandmark() %><%= deliveryAddress.getCity() %></p>
                                    </div>
                                    <div class="reorder1">
                                     <% if( deliveryAddress.getStatus() == 0 ){ %>
                             		
                             		 <a  href ="<%= request.getContextPath()%>/set_default_address?user_id=<%= deliveryAddress.getUserId() %>&address_id=<%=  deliveryAddress.getAddressId() %>"> <button id="reorder" class="reorder-btn">Set as default</button></a>
                                     <% } %> 
                                    </div>
                                    
                                    <div class="reorder1">
                                  
                             		
                             		 <a href="<%= request.getContextPath()%>/edit_address?address_id=<%=  deliveryAddress.getAddressId() %>&user_id=<%= deliveryAddress.getUserId() %>"> <button id="reorder" class="reorder-btn">Edit</button></a>
                                 
                                    </div>
                                </div>
                                                                
                            </div>
                        </div>
                        
                    </li>
                   <%} %>
                </ul>
                
             
            </div>
            
                    	       
        </section>
    </main>

</body>
</html>