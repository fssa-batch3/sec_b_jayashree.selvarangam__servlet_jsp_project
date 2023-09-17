<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.service.ProductService"%>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.DAO.ProductDAO"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>coffee shop </title>


        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        <link rel="stylesheet" href="./assets/css/style.css ">
        <link rel="stylesheet" href="./assets/css/header.css ">
        <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
        <script src="./main.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
    		<jsp:include page="/header.jsp"></jsp:include>
        <!-- <header class="header">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="fas fa-bars"></label>
            <a href="../coffeeshop/index.html" class="logo"> Coffee <i class="fas fa-mug-hot"></i> </a>
        
            <nav class="navbar">
            <a href="./index.html">Home</a>
            <a href="./pages/order/order-bestseller.html">Order</a>
            <a href="./pages/payment/payment.html">Pay</a>
            <a href="./pages/My orders/myorders.html">My orders</a>
            <a href="../../pages/blogs/blog.html">Blogs</a>--> 
        <!-- </nav>
            <div class="icons">
            <a href="./pages/add to cart/addtocart.html" class="fas fa-shopping-cart"></a>
            <a href="./pages/profile/profile.html" class="fas fa-user"></a>
            </div>
            <a href="./pages/login/login.html" class="btn">Login</a>
        
            </header> -->
        <section class="home" id="home">

            <div class="row">

                <div class="content">
                    <h3>Be delighted with Expresso Cafe's coffee </h3>
                    <a href="#" class="btn">Order now</a>
                </div>

                <div class="image">
                    <img src="./assets/image/home-img-1.png" class="main-home-image" alt="">
                </div>

            </div>

            <div class="image-slider">
                <img src="./assets/image/home-img-1.png" alt="">
                <img src="./assets/image/home-img-2.png" alt="">
                <img src="./assets/image/home-img-3.png" alt="">
            </div>
        </section>

        <!-- home section ends -->
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

        <section class="about" id="about">

            <h1 class="heading">
                <span>ABOUT US </span> 
            </h1>

            <div class="row">

                <div class="video-container">
                    <video src="./assets/image/video.mp4  " loop autoplay muted></video>
                    <h3>ENJOY YOUR COFFEE</h3>
                </div>

                <div class="content">
                    <h3>Why choose us?</h3>
                    <p>
                        Welcome to Expresso cafe, where we bring the finest coffee directly to your doorstep.
                         We are a team of passionate coffee enthusiasts dedicated to delivering an exceptional 
                         coffee experience right to your home or office.
                          Our skilled baristas are trained to craft each cup of coffee with care, ensuring that
                          every sip is a delightful moment of indulgence. 

                         

</p>
<p>
                        
              We are excited to be part of your daily coffee ritual and to share our love for exceptional coffee with you. Order now and elevate your coffee experience with Expresso Cafe.
                   
                    </p>
           
                </div>

            </div>

        </section>
        <!-- <section class="footer">

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
            <a href="./pages/productdetail/product-cappu.html"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="./pages/order/order-bestseller.html"> <i class="fas fa-arrow-right"></i> order </a>
            <a href="./pages/payment/payment.html"> <i class="fas fa-arrow-right"></i> pay </a>
            <a href="./pages/My orders/myorders.html"> <i class="fas fa-arrow-right"></i> my orders </a>
            <a href="./pages/blogs.html"> <i class="fas fa-arrow-right"></i> blog </a> -->
        <!-- </div>
            <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            </div>

            </div> -->
        <!-- </section> -->
    </body>
    <!-- <script src="./main.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script> -->

    <script src="./index.js"></script>

    <script src="./pages/order/header.js"></script>
    <script src="./components/footer.js"></script>

</html>