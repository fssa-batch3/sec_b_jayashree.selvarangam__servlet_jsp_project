<%@page import="in.fssa.expressocafe.service.CategoryService"%>
<%@page import="in.fssa.expressocafe.model.Category"%>
<%@page import="java.util.List"%>
<%-- <header class="header">
<input type="checkbox" name="" id="toggler">
<label for="toggler" class="fas fa-bars"></label>
<a href="index.jsp" class="logo"> <img class="logo-img" src="https://iili.io/J9qp3gt.png" alt="">
 </a>
	<nav class="navbar">
    <a href="index.jsp">Home</a>
    <!-- <a href="${root}/pages/order/order-bestseller.html">Order</a> -->
    <!--<a href="${root}/pages/payment/payment.html">Pay</a>-->
    <div class="dropdown">
    <a href="list_of_products" class="nav">  <span>Order</span>  </a>
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
	<a href="get_profile" class="fas fa-user"></a>
	</div>
</header> --%>
 <% if (session.getAttribute("loggedUser") == null) { %>

<!-- before login header -->

<header class="header">

<input type="checkbox" name="" id="toggler">
<label for="toggler" class="fas fa-bars"></label>
<a href="index.jsp" class="logo"> <img class="logo-img" src="https://iili.io/J9qp3gt.png" alt=""></a>

<nav class="navbar">
    <a href="index.jsp">Home</a>
    <!-- <a href="${root}/pages/order/order-bestseller.html">Order</a> -->
    <div class="dropdown">
    <a href="list_of_products" class="nav">  <span>Order</span>  </a>
     <div class="dropdown-content">
	 <% CategoryService category = new CategoryService(); %>
   	  <% List<Category> cateList = category.getAllCategories(); %>
   	    	<% for(Category cate : cateList){ %>
   	    	
   	  <a href="list_of_products?cate_id=<%= cate.getCategoryId() %>"><%= cate.getCategoryName() %></a>
<% } %>  
    </div> 
  	</div> 
    <a href="blog.jsp">Blogs</a>
</nav>
<div class="search-container">
<input type="text" id="searchInput" placeholder="Search">
<ul id="searchResults"></ul>
</div>

<button class="btn"><a href="LoginNew">Login</a></button>
</header>
 <% } else { %> 

<!-- after login header -->

<header class="header">
<input type="checkbox" name="" id="toggler">
<label for="toggler" class="fas fa-bars"></label>
<a href="index.jsp" class="logo"> <img class="logo-img" src="https://iili.io/J9qp3gt.png" alt=""> </a>


<nav class="navbar">
    <a href="index.jsp">Home</a>
    <!-- <a href="${root}/pages/order/order-bestseller.html">Order</a> -->
    
    <!--<a href="${root}/pages/payment/payment.html">Pay</a>-->
        <div class="dropdown">
    <a href="list_of_products" class="nav">  <span>Order</span>  </a>
    <div class="dropdown-content">
   	 <% CategoryService category2 = new CategoryService(); %>
   	  <% List<Category> cateList2 = category2.getAllCategories(); %>
   	    	<% for(Category cate2 : cateList2){ %>
   	    	
   	  <a href="list_of_products?cate_id=<%= cate2.getCategoryId() %>"><%= cate2.getCategoryName() %></a>
<% } %> 
    </div>
  	</div> 
    <a href="<%= request.getContextPath() %>/get_all_order">My orders</a>
  
    <a href="blog.jsp">Blogs</a>
</nav>
<div class="search-container">
<input type="text" id="searchInput" placeholder="Search">
<ul id="searchResults"></ul>
</div>
<div class="icons">
<a href="add_to_cart_servlet" id="e"class="fas fa-shopping-cart"></a>
<div class="dropdown1">
<a href="#" class="fas fa-user"></a>
<div class="dropdown-content1">
   <a href="#">profile</a>
   <a href="">Address profile</a>
   <a href="<%= request.getContextPath() %>/add_address">Add address</a>
    </div>
</div>
 <a href="user/logout">Logout</a>
</div>
</header> 
<% } %> 