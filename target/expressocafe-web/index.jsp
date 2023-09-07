<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>coffee shop </title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        
        <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
        <script src="./main.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
          * { font-family: 'Aclonica', sans-serif;
font-family: 'Merienda', cursive;
font-family: 'Montserrat', sans-serif;
font-family: 'Poppins', sans-serif;
font-family: 'Quicksand', sans-serif;
        }
        /* body{
    color: blueviolet !important;
} */
*{
    font-family: 'Poppins', sans-serif;
    margin:0; padding:0;
    box-sizing: border-box;
    outline: none; border:none;
    text-decoration: none;
    transition: all .2s linear;
}
.btn{
    display: inline-block;
    padding:.9rem 1.5rem;
    border-radius: var(--border-radius);
    color:var(--main-color);
    background: none;
    border:var(--border);
    cursor: pointer;
    margin-top: 1rem;
    font-size: 1.7rem;
}

/* .btn:hover{
    border-radius: var(--border-radius-hover);
    border:var(--border-hover);
    
} */
header #toggler{
    display: none;
 }
 
 header .fa-bars{
     font-size: 1rem;
     color:#333;
     border-radius: .10rem;
     padding:.1rem .5rem;
     cursor: pointer;
     border:.1rem solid rgba(0,0,0,.3);
     display: none;
 }

header{
    position:sticky;
    top:0;
    left:0;
    right:0;
    display:flex;
    justify-content:space-between;
    align-items: center;
    background-color: white;
    padding:0.5rem 1%;
    z-index: 1000;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
}

.header .navbar a{
    margin: 0rem .9rem;
    font-size:1.3rem;
    text-decoration: none;
}
.header .navbar a:hover{
  color:gray;
}
.header .logo{
    font-size:1.6rem;
    text-transform:capitalize;
    text-decoration:none;
    color:var(--main-color);
}

 /* header .fa-bars{
    display: inline-block;
}
header .navbar{
    position:absolute;
    top:100%; left:0; right:0;
    background:#eee;
    border-top: .1rem solid rgba(0,0,0,.1);
    clip-path:polygon(0 0, 0 0, 0 0, 0 0);
}

header #toggler:checked ~ .navbar{
    clip-path:polygon(0 0, 100% 0, 100% 100%, 0% 100%);
}  */
.header .logo i{
    font-size:1.6rem;
    text-transform: capitalize;
    color:var(--main-color);
}
.header .navbar a{
    font-size: 1.5rem;
    color:var(--main-color);
    margin-left: 1.5rem;
}
.header .navbar a:hover{
    color:black;
}
 .header .icons{
    margin: 0 .3rem;
 }
 .header .icons a{
    font-size: 1.5rem;
    color:var(--main-color);
    /* margin-left: 1.5rem; */
}
.header .icons a:hover{
    color:black;
}
#e{
margin-right: 20px;
}
.header .btn{
    margin-top: 0;
    font-size: 1.3rem;
}
.shopping-cart:before {
  content: "\f07a";
  margin-right: 10px;
}
html{
    overflow-x: hidden;
    scroll-padding-top: 7rem;
    scroll-behavior: smooth;
}


.dropdown {
    position: relative;
    display: inline-block;
    margin-right: 2vw;
  }
  .dropdown-content {
    display:none;
    position: absolute;
    width:18vw;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding:  1rem 2rem;
    z-index: 1;
    background: white;
  }
  .navbar .dropdown-content a{
    font-size:1.3rem;
    color:rgb(110, 107, 107);
    display: block;
    padding: 10px 0;
    font-size: 17px;
  }

  .dropdown span{
   position:relative;
   left:2rem;

   color: rgb(11 11 11);
  }
  .dropdown span:hover{
    color:rgb(91, 88, 88);
  }
  .dropdown:hover .dropdown-content {
    display:block;
  }

  
.dropdown1 {
    position: relative;
    display: inline-block;
    margin-right: 2vw;
  }
  .dropdown-content1{
    display:none;
    position: absolute;
    width:18vw;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding:  1rem 2rem;
    z-index: 1;
    background: white;
    right:2px;
  }
  .navbar .dropdown-content1 a{
    color:rgb(110, 107, 107);
    display: block;
    padding: 10px 0;
    font-size: 16px;
  }

  .dropdown1 span{
   position:relative;
   left:2rem;

   color: rgb(11 11 11);
  }
  .dropdown1 span:hover{
    color:rgb(91, 88, 88);
  }
  .dropdown1:hover .dropdown-content1{
    display:grid;
  }
  .logo-img{
    width: 100px;
    margin-left: 20px;
  }


  .dropdown2{
    position: relative;
    display: inline-block;
    margin-right: 2vw;
  }

  .dropdown-content2{
    display:none;
    position: absolute;
    width:18vw;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding:  1rem 2rem;
    z-index: 1;
    background: white;
    right:2px;
  }

  .navbar .dropdown-content2 a{
    color:rgb(110, 107, 107);
    display: block;
    padding: 10px 0;
    font-size: 16px;
  }

/* .search-container{
  max-width: 300px;
  margin: 20px auto;
  padding: 10px;
  background-color: #fff;
  border-radius: 4px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
} */

.search-container{
  width:17vw;
  /* margin: 20px auto; */
  /* position: absolute; */
  margin-left: 3.7vw;
  padding: 5px;
  background-color: #fff;
  left: 900px;
  /* border-radius: 4px; */
  /* box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); */
}

#searchInput{
  width:16.5vw;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  margin-left:2px;
}

#searchResults {
  list-style-type: none;
  margin: 10px 0;
  padding: 0;
  position: absolute;
  background-color: white;
}

#searchResults li{
  margin-bottom: 5px;
  width:17vw;
}

#searchResults li a{
  display: block;
  padding: 10px;
  text-decoration: none;
  color: #333;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
  transition: background-color 0.3s ease;
}

#searchResults li a:hover {
  background-color: #f9f9f9;
}

#noResultsMessage {
  margin-top: 10px;
  color: #777;
  text-align: center;
}

  .dropdown2 span{
   position:relative;
   left:2rem;

   color: rgb(11 11 11);
  }
  .dropdown2 span:hover{
    color:rgb(91, 88, 88);
  }
  .dropdown2:hover .dropdown-content2{
    display:block;
  }
  .logo-img{
    width: 100px;
    margin-left: 20px;
  }
        
        </style>
    </head>
    <body>
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
        <%@ include file="header.jsp" %>
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
                    <!--       
                    later
                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="./assets/image/javachip.jpg" width="80px" height="80px" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title">Java chip frappucino</div>
                        <div class=" coffee-message">Tall(394ml)392kcal</div>
                        </div>
                        
                        </div>
                        <div class="coffee-cost-details">
                        <div class="cost">Rs.394</div>
                        <div class="add-item"><a href="./pages/productdetail/product-java.html"><button>add item</button></a></div>
                        </div>
                        </div>
                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="./assets/image/haitea.jpg" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title">Hathikuli Tea</div>
                        <div class=" coffee-message">Hathikuli Tea(473 ML).0 Kcal</div>
                        </div>
                        </div>
                        <div class="coffee-cost-details">
                        <div class="cost">Rs.406</div>
                        <div class="add-item"><a href=./pages/productdetail/product-haitea.html"><button>add item</button></a></div>
                        </div>
                        </div>
                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="./assets/image/pourover.jpg" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title">French Press - Kenya</div>
                        <div class=" coffee-message">PER SERVE (237 ML) - 0 Kcal</div>
                        </div>
                        </div>
                        <div class="coffee-cost-details">
                        <div class="cost">Rs.674</div>
                        <div class="add-item"><a href="./pages/productdetail/product-frenchpour.html"><button>add item</button></a></div>
                        </div>
                        </div>
                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="./assets/image/gingerfrap.jpg" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title">Gingerbread Frappuccino</div>
                        <div class=" coffee-message">TALL(354 ML) .329 Kcal</div>
                        </div>
                        </div>
                        <div class="coffee-cost-details">
                        <div class="cost">Rs.474</div>
                        <div class="add-item"><a href="./pages/productdetail/product-gingerfrap.html"><button>add item</button></a></div>
                        </div>
                        </div>
                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="./assets/image/doppio.jpg" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title">Doppio Espresso</div>
                        <div class=" coffee-message">PER SERVE (45 ML) - 0 Kcal</div>
                        </div>
                        </div>
                        <div class="coffee-cost-details">
                        <div class="cost">Rs.365</div>
                        <div class="add-item"><a href="./pages/productdetail/product-doppio.html"><button>add item</button></a></div>
                        </div>
                        </div>
                        <div class="coffee-items">
                        <div class="coffee-description">
                        <div class="coffee-image"><img src="./assets/image/vanila.jpg" alt=""></div>
                        <div class="coffee-content">
                        <div class="coffee-title">Vanilla Caffe Latte</div>
                        <div class=" coffee-message">SHORT(237 ML) .125 kcal</div>
                        </div>
                        </div>
                        <div class="coffee-cost-details">
                        <div class="cost">Rs.244</div>
                        <div class="add-item"><a href="./pages/productdetail/product-vanilla.html"><button>add item</button></a></div>
                        </div>
                        </div> -->

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
                        
                        We are excited to be part of your daily coffee ritual and to share our love for exceptional coffee with you. Order now and elevate your coffee experience with Espresso Express.
                   
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

    

</html>