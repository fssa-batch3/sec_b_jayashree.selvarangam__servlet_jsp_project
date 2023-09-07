<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>coffee shop index</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        
        <script src="https://cdn.jsdelivr.net/npm/uuid@8.3.2/dist/umd/uuidv4.min.js"></script>
        <script src="./main.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <style>
:root{
    --main-color:#443;
    --bs-pink: #d63384;
    --bs-red: #dc3545;
    --bs-orange: #b94728;
    --bs-yellow: #ffc107;
    --bs-green: #198754;
    --bs-teal: #20c997;
    --bs-cyan: #0dcaf0;
    --bs-gray-400: #ced4da;
    --bs-gray-500: #adb5bd;
    --bs-gray-600: #6c757d;
    --bs-gray-700: #495057;
    --bs-gray-800: #343a40;
    --bs-gray-900: #212529;
    --bs-primary: #0d6efd;
    --border-radius:30% 4% ;
    --border-radius-hover:4% 30%;
    --border:.2rem solid var(--main-color);
    --border-hover:.2rem dashed var(--main-color);
}

*{
    font-family: 'Aclonica', sans-serif;
    font-family: 'Montserrat', sans-serif;
    font-family: 'Poppins', sans-serif;
    font-family: 'Quicksand', sans-serif;
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
    margin-top: .5rem;
    font-size: 1.7rem;
}

.btn:hover{
    border-radius: var(--border-radius-hover);
    border:var(--border-hover);
    
}
html{

    overflow-x: hidden;
    scroll-padding-top: 7rem;
    scroll-behavior: smooth;
}

section{
    padding:2rem 9%;
}

/* header sectionn */
header{
    position:sticky;
    top:0;
    left:0;
    right:0;
    display:flex;
    justify-content:space-between;
    align-items: center;
    padding:1.3rem 5%;
    z-index: 1;
    background:#fff;
    box-shadow: 0 .5rem 1rem rgba(0,0,0,.1);
}

.header .navbar a{
    margin: 0rem .9rem;
    font-size:1.3rem;
}
.header .logo{
    font-size:1.6rem;
    text-transform: capitalize;
    color:var(--main-color);
}
.header .logo i{
    font-size:1.6rem;
    
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
    margin-left: 1.5rem;
}
.header .icons a:hover{
    color:black;
}
.header .btn{
     margin-top: 0;
    font-size: 1.3rem;
}

/* header section*/
/*home*/
.home{
    width: 100%;
    min-height: 30vh;
    padding-top: 12rem;
    background: url(https://iili.io/J9qtBVI.jpg) no-repeat;
    background-position: center;
    background-size: cover;
    
}
.home .row{
    display: flex;
    flex-direction: row;
    justify-content:space-between;
    align-items: center;
    flex-wrap:nowrap;
    gap:1.5rem;
}

.home .row .content{
    flex:1 1 52rem;
}

.home .row .image{
    flex:1 1 42rem;
    text-align: center;
}

.home .row .image img{
    height:15rem;
    animation: float 4s linear infinite;
}

 /* @keyframes float{
    0%, 100%{
        transform: translateY(0rem);
    }
    50%{
        transform: translateY(-10rem);
    } 
} */

.home .row .content h3{
    font-size: 3rem;
    color:var(--main-color);
    text-transform: uppercase;
}

.home .image-slider{
    text-align: center;
    padding:3rem 0;
}

.home .image-slider img{
    height:5rem;
    margin:0 .5rem;
    cursor: pointer;
    margin-top: 5rem;
}

.home .image-slider img:hover{
    transform: translateY(-2rem);
}
/*latest-recommendation*/
.latest-recommendation{
    width: 100%;
    height:300px;
    background-color:var(--bs-gray-400);
  
}
.latest h3{
    color:white;
    font-size:1.75rem;
}
.coffee-products{
    margin-top:2rem;
    display: flex;
    
    
    column-gap:3rem;
    overflow-x:scroll;
   
}
.coffee-products::-webkit-scrollbar {
    display: none;
}
.coffee-items{
    width:22.5rem;
    height:170px;
    background-color:white;
    border-radius:.5rem;
}
.coffee-image img{
    width:80px; height:80px;
    object-fit: cover;
    border-radius:.3rem;
}
.coffee-description{
    display:grid;
    grid-template-columns:6.25rem 15.625rem;
    padding:1.188rem 1.625rem;
}

.coffee-title{
    vertical-align: top;
    margin-top: 0;
    margin-bottom:.625rem;
    color: var(--bs-gray-600);
    font-weight: 600;
}
.coffee-message{
   margin-top: 0;
   font-size:.9rem;
   color: var(--bs-gray-500);
   font-weight: 600;
}
.coffee-cost-details{
    display:flex;
    flex-direction:row;
    justify-content: space-between;
    align-items: center;
    padding:1.188rem 1.625rem;
    position:relative;
    bottom:1.25rem;
    
}
.cost{
    font-size:1.05rem;

}
.add-item button{
    width:6rem;
    height: 2rem; 
    border: var(--border);
    border-radius: var(--border-radius);
    background-color: var(--main-color);
    color:white;

}
/* .add-item button:hover{
    border: var(--border-hover);
    border-radius: var(--border-radius-hover);
} */
.about .row{
    display: grid;
    grid-template-columns:1fr 1fr;
    align-items: center;
    column-gap:6rem;
    padding:2rem 0;
    padding-bottom: 3rem;
}

.about .row .video-container{
    flex:1 1 4rem;
    position: relative;
    height:35rem;
}

.about .row .video-container video{
    width:100%;
    border:1.5rem solid var(--bs-gray-400);
    border-radius: .5rem;
    box-shadow: .3rem .5rem  rgba(0,0,0,.1);
    height: 100%;
    object-fit: cover;
}

.about .row .video-container h3{
    position: absolute;
    top:50%;
    transform: translateY(-50%);
    font-size: 2rem;
    background:var(--bs-gray-600);
    width:100%;
    padding:1rem 2rem;
    text-align: center;
    mix-blend-mode: screen;
}

.about .row .content{
    flex:1 1 4rem;
}
.about .row .content h3{
    font-size:3rem;
    
    color:var(--main-color);
}
/*
.about .row .content h3{
    font-size: 48px;
    
    color:#333;
    animation: back 20s linear infinite;
    animation-duration: 20s;
    animation-timing-function: linear;
    animation-delay: 0s;
    animation-iteration-count: infinite;
    animation-direction: alternate-reverse;
    animation-fill-mode: none;
    animation-play-state: running;
    animation-name: back;
}
@keyframes back{
    0%   {background: red; left: 0px; top: 0px;}
  25%  {background: yellow; left: 200px; top: 0px;}
  50%  {background: blue; left: 200px; top: 200px;}
  75%  {background: green; left: 0px; top: 200px;}
  100% {background: red; left: 0px; top: 0px;}
  from {left: 0px;}
  to {left: 200px;}
 
}
*/
.about .row .content p{
    font-size: 1.5rem;
    color:var(--main-color);
    padding:.5rem 0;
    padding-top:1rem;
    line-height: 1.5;
}
section{
    padding:32px 96px;
    
}

.heading{
    text-align: center;
    font-size: 56px;
    
    padding:14px;
    margin:32px 0;
    background:var(--bs-gray-700);
}

.heading span{
    color:white;
}
.footer{
    width:100%;
    height: fit-content;
    background-color:var(--bs-gray-500);
}
.footer .box-container{
    display: grid;
    grid-template-columns:1fr 1fr 1fr 1fr;
    gap:1.5rem;
    
}

.footer .box-container .box h3{
    font-size: 2.5rem;
    padding:1rem 0;
    color:var(--main-color);
}

.footer .box-container .box a{
    display: block;
    font-size: 1.5rem;
    padding:1rem 0;
    color:var(--main-color);
}



.footer .box-container .box a:hover i{
    padding-right: 2rem;
}

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

@media (max-width:412px){
    html{
        font-size:75%;
    }
    
    section{
        padding:1rem;
    }
    header{
        padding:.1rem;
    }
    header .fa-bars{
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
    }

    header .navbar a{
        margin:1.5rem;
        padding:1.5rem;
        display:block;
    }
    .latest{
        display: flex;
          flex-wrap: nowrap;
          overflow-x: scroll;
          width:100%;
        
     }
     .latest-recommendation{
        height: 60%;
     }
     .btn{
        font-size:1rem;
        padding:1rem;
        margin:.1rem .1rem;
     }
     .latest h3 {
        display: none;
        }
        .content h3,a{
            position: relative;
            bottom: 5%;
        }
    .image{
        display: none;
    }
    .right-content .content-2{
       display: none;
    }
    .about .row{
        display: block;
        
    }

    .about .row .content h3{
        font-size: 2.5rem;
        padding-top: 3rem;
        padding-left: 3rem;
    }

    .about .content span
    {
        font-size: 2.5rem;
    }
    
    .about .row .video-container{
        width: 350px;
        height:360px;
       margin-left: 5%;
    }
    
    .about .row .content p{
        font-size: 1.5rem; 
        padding:2rem 5%;
    }
    .about .row .video-container h3{
        margin-left: 3%;
        font-size: 1.7rem;
    }
    .footer .box-container{
        grid-template-columns: 1fr;

    }
    .coffee-content{
        padding-left: 1rem;
    }
    .box{
        margin-left: 15%;
    }

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
                    <img src="" class="main-home-image" alt="">
                    
                </div>

            </div>

            <div class="image-slider">
                <img src="https://iili.io/J9qb2Qp.webp" alt="">
                <img src="https://iili.io/J9qbnvs.webp" alt="">
                <img src="https://iili.io/J9qbAn2.webp" alt="">
            </div>

        </section>

        <section class="about" id="about">

            <h1 class="heading">
                <span>ABOUT US </span> 
            </h1>

            <div class="row">

                <div class="video-container">
                    <video src="https://streamable.com/37w7ai" loop autoplay muted></video>
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
                        We are excited to be part of your daily coffee ritual and to share our love for exceptional coffee with you. Order now and elevate your coffee experience with Expresso cafe.                  
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