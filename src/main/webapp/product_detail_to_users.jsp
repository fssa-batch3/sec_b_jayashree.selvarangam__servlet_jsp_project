<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product detail </title>
   
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" 
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="../../assets/css/productdetail1.css ">
        <link rel="stylesheet" href="../../assets/css/header.css">
        <link rel="stylesheet" href="../../assets/css/footer.css ">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
      
       
        <style>
          * { font-family: 'Aclonica', sans-serif;
font-family: 'Merienda', cursive;
font-family: 'Montserrat', sans-serif;
font-family: 'Poppins', sans-serif;
font-family: 'Quicksand', sans-serif;
        }
        
        :root{
    --main-color:#443;
    --bs-pink: #d63384;
    --bs-red: #dc3545;
    --bs-orange: #b94728;
    --bs-yellow: #ffc107;
    --bs-green: #198754;
    --bs-teal: #20c997;
    --bs-cyan: #0dcaf0;
    --bs-gray-400:#ced4da;
    --bs-gray-500:#adb5bd;
    --bs-gray-600:#6c757d;
    --bs-gray-700:#495057;
    --bs-gray-800:#343a40;
    --bs-gray-900:#212529;
    --bs-primary: #0d6efd;
    --border-radius:95% 4% 97% 5%/4% 94% 3% 95%;
    --border-radius-hover:4% 95% 6% 95%/95% 4% 92% 5%;
    --border:.2rem solid var(--main-color);
    --border-hover:.2rem dashed var(--main-color);
}

section{
    padding:2rem 9%;
}
/* .btn-button{
    display: inline-block;
    padding:.9rem 1.5rem;
    border-radius: var(--border-radius);
    color:var(--main-color);
    background: none;
    border:var(--border);
    cursor: pointer;
    margin-top: 1rem;
    font-size: .85rem;
} */
#btn-4{
    position: relative;
    top: 2px;
}
.btn-button {
    /* display: grid; */
    padding: 0.6rem 0.9rem;
    flex-direction: row;
     border-radius: 2px; 
    /* color: var(--main-color); */
    background: var(--main-color);
    border: var(--border);
    cursor: pointer;
    margin-top: 1rem;
    font-size: .85rem;
    color: white;
    margin-left: 10px;
}

.btn-button:hover{
    border-radius: var(--border-radius-hover);
    border:var(--border-hover);
    
} 

body{
    background-image: url(../../assets/image/menu-bg.jpg);
}


.about-product .row{
    display: flex;
    justify-content: space-around;
    align-items: center;
    flex-wrap: wrap;
    margin-top: 50px;
}

.about-product .row .image{
    flex:1 1 22rem;
}

.about-product .row .image img{
    width: 100%;
    height: 460px;
    object-fit: cover;
    animation:aboutImage 4s linear infinite;
}
/* @keyframes aboutImage {
    0% , 100%{
        transform: scale(.9);
        border-radius: var(--border-radius-hover);
    }
   
    50%{
        transform: scale(.8);
        border-radius: var(--border-radius);
    }
}  */

.about-product .row .content{
    flex:1 1 42rem;
    margin-left: 60px;
}

.about-product .row .content .heading{
   
    text-transform: uppercase;
    color:var(--bs-teal);
    font-size: 5rem;
    letter-spacing: .2rem;
    text-align: center;
    font-size: 1.5rem;
    line-height: 1.8;
    color: var(--bs-orange);
    position: relative;
    bottom: 30px;
}

.size {
    position: relative;
    right: 10px;
    display: flex;
}
.about-product .row .content p {
    /* color: var(--main-color); */
    font-size: 1.2rem;
    line-height: 1.8;
    padding: 1rem 0;
    color: var(--bs-gray-700);
    font-weight: bold;
    width: 35vw;
}
.about-product .row .content .cost{
    color:brown;
}
.buttons{
    display:grid ;
    grid-template-columns: 1fr 1fr 1fr;
}
.inc-dec-button button{
    padding: 10px 15px 10px 15px;
    border:var(--border) ;
    border-radius: var(--border-radius);
    margin-top: 15px;
}
/* .inc-dec-button button:hover{
    border-radius: var(--border-radius-hover);
    border:var(--border-hover);
    
} */
.inc-dec-button .minus i{
    margin-right:15px;
    font-size:15px;
    color: var(--main-color);
}

.inc-dec-button .plus i{
    margin-left:15px;
    font-size:15px;
    color: var(--main-color);
}
.inc-dec-button span{
    font-size:15px;
    color: var(--main-color);
}
.size  button{
    padding: 10px 15px 10px 15px;
}
.add-item-cart button{
   position: relative;
   bottom:8px;
}
.about-product{
    margin-bottom: 4rem;
}
/*about product ends*/
 .cost{
   position: relative;
   bottom: 5px;
   color:#b94728;
}
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
    display:flex;
    flex-wrap: nowrap;
    flex-direction: row;
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
    margin-left:2rem;
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
.review-container {
    display: flex;
       gap:2.1vw;
       grid-auto-columns: 22%;
       overflow-x: auto;
       overscroll-behavior-inline: contain;
        
    }
    .review-container .customer-review {
    border: var(--border);
    border-radius: var(--border-radius);
    color: var(--main-color);
    margin: 10px;
    /* width: 60vw; */
    padding: 15px 20px 15px 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}



.Review {
    padding: 2rem 9%;
    width: 100vw;
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
    color:brown;
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
/* customer review*/

/* .customer-review:hover{
    
    border:var(--border-hover);
    border-radius: var(--border-radius-hover);
} */
.review-writer{
    text-align: center;
    font-size: 1.5rem;
    margin-bottom: 1rem;
}
.star-review{
    text-align: center;
    font-size: 1.5rem;
    margin-bottom: 1rem;
    width:12vw
}
.review-detail{
    padding-left: 15px;
    font-size: 18px;
    width: 12vw
}
.review-container::-webkit-scrollbar{
    width:0
}
/* .review-container{
    display:grid;
    grid-template-columns: 1fr 1fr 1fr 1fr ;
    margin-left:50px;
   
} */
.review-heading{
    padding-bottom:1rem;
    padding-left: 30px;
    font-size: 1.5rem;
    color:var(--main-color);
  
}
#h3{
    display: none;
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
        font-size:85%;
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
      .review-container{
     overflow-x: scroll;
      }
     .latest{
        display: flex;
          flex-wrap: nowrap;
          overflow-x: scroll;
          width:100%;
     }
     .btn{
        font-size:1rem;
        padding:.3rem;
        margin:.1rem .1rem;
     }
     .buttons{
        display: grid;
        grid-template-columns: 1fr;
        row-gap: 3rem;
     } 
     .inc-dec-button{
        margin-left: 3rem;
     }
     .add-item-cart{
        margin-left: 2rem;
     }
    .content .detail{
        margin-right: 30px;
    }
    .latest h3 {
    display: none;
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
    	
    			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@ include file="header.jsp" %>
        <section class="about-product" id="about-product">
            <div class="row">
        
                <div class="image">
                <img src="https://iili.io/J97on94.jpg" alt="">
               
                </div>
                <%Product product = (Product) request.getAttribute("prod"); %>
        		
                <div class="content">
                <h3 class="heading"><%= product.getName() %></h3>

                
                <p class="detail"><%= product.getDescription() %></p>

                <%for (Price price : product.getPriceList()) {%>
                <%if(price.getSize().getSizeId()==2){ %>
                
                <p class="cost" id="price">Rs.<%= price.getPrice() %></p>
                <%} %>
                <%} %>
                
                <div class="buttons">
                <div class="size">
                <button class="btn-button" onclick="displayPrice('LARGE')"> tall</button>
                <button class="btn-button" onclick="displayPrice('MEDIUM')">medium</button>
                <button class="btn-button"onclick="displayPrice('SMALL')" >short</button> 
                </div>
                <div class="inc-dec-button">
                <button >
                <span class="minus"> <i class="fa-solid fa-minus"></span></i><span>0</span><span class="plus"><i class="fa-solid fa-plus"></i></span>
                </button>
                </div>
                <div class="add-item-cart">
                <a href="../../pages/add to cart/addtocart.html"><button class="btn-button">Add to the cart</button></a>
                </div>
                </div>
                </div>
                </div> 
        </section>
      
  <script>
        var productPrices = [];

        var productPricesJson = '<c:out value="${productPricesJson}" />';
     // Use unescape to decode HTML entities
      var validJsonString = productPricesJson.replace(/&#034;/g, '"');

// Parse the JSON data


        // Now parse the JSON data
         
        if (productPricesJson) {
        	 productPrices = JSON.parse(validJsonString);
        	console.log(productPrices);
        }

        var priceDisplay = document.getElementById("price");
        var priceFound = false;

        function displayPrice(size) {
            for (var i = 0; i < productPrices.length; i++) {
                if (productPrices[i].size === size) {
                    priceDisplay.innerText = "Rs. " + productPrices[i].price;
                    priceFound = true;
                    break; 
                }
            }

            if (!priceFound) {
                priceDisplay.innerText = "No price available for this size.";
            }
        }


    </script>


        <!-- <footer>
            <section class="footer">

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
            <a href="../../index.html"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="../../pages/order/order-bestseller.html"> <i class="fas fa-arrow-right"></i> order </a>
            <a href="../../pages/payment/payment.html"> <i class="fas fa-arrow-right"></i> pay </a>
            <a href="../../pages/My orders/myorders.html"> <i class="fas fa-arrow-right"></i> myorders </a>
            <a href="../../pages/blogs/blog.html"> <i class="fas fa-arrow-right"></i> blog </a> -->
        <!-- </div> -->
                    
        <!-- <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a> -->
        <!-- <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
            </div>
            
            </div>
            </section>
            </footer> --> 
    </body>
  
</html>