<%@page import="in.fssa.expressocafe.service.CategoryService"%>
<%@page import="in.fssa.expressocafe.model.Category"%>
<%@page import="java.util.List"%>
<header class="header">
<input type="checkbox" name="" id="toggler">
<label for="toggler" class="fas fa-bars"></label>
<a href="index.jsp" class="logo"> <img class="logo-img" src="../../assets/image/logo-transparent-png.png" alt=""><p>expresso cafe</p>
 </a>


	<nav class="navbar">
    <a href="index.jsp">Home</a>
    <!-- <a href="${root}/pages/order/order-bestseller.html">Order</a> -->
    <!--<a href="${root}/pages/payment/payment.html">Pay</a>-->
    <div class="dropdown">
    <a href="" class="nav">  <span>Order</span>  </a>
    <div class="dropdown-content">
   	 <% CategoryService category = new CategoryService(); %>
   	  <% List<Category> cateList = category.getAllCategories(); %>
   	    	<% for(Category cate : cateList){ %>
   	    	
   	  <a href="list_of_products?cate_id=<%= cate.getCategoryId() %>"><%= cate.getCategoryName() %></a>
<% } %> 
    </div>
  	</div>
   <!-- <a href="${root}/pages/My orders/myorders.html">My orders</a> -->
  

	</nav>
	<!-- <div class="search-container">
	<input type="text" id="searchInput" placeholder="Search">
	<ul id="searchResults"></ul>
	</div> -->

	<div class="dropdown1">
	<a href="#" class="fas fa-user"></a>
	<div class="dropdown-content1">
   <a href="">profile</a>
	<!--<a href="">Address profile</a>
    <a href="">Add address</a> -->
    </div>
	</div>


</header>
