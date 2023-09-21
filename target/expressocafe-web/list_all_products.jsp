<%@page import="in.fssa.expressocafe.model.Price"%>
<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all products</title>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>coffee shop </title>
   <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
		 <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/order-drink.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <style>

	
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
/*heading*/
 .menu{
   background-color: var(--bs-gray-400);
   border-top-left-radius:50px;
   border-top-right-radius:50px;
}

.product{
    display:grid;
    grid-template-columns:1fr 1fr;
    column-gap: 10rem;
    padding: 2rem 14%;
    margin-left:10rem;
    }
    
.bestsellers{
    display: flex;
    flex-direction:column;
   
}
.bestsellers-image img{
    width:15.625rem;
    height:15.625rem;
    object-fit: cover;
    border:var(--border);
    border-radius:var(--border-radius);
}
.bestsellers-image img:hover{
    border: var(--border-hover);
    border-radius:var(--border-radius-hover);
}
.bestsellers-p{
    text-align:left;
    font-size:1.05rem;
    color:var(--bs-gray-700);
}
.drinks{
    display: flex;
    flex-direction: column;
}
.drinks-image img{
    width:15.625rem;
    height: 15.625rem;
    object-fit: cover;
    border:var(--border);
    border-radius:var(--border-radius)
}
.drinks-image img:hover{
    border: var(--border-hover);
    border-radius:var(--border-radius-hover);
}
.whole{
    padding: 50px;
}
.Coldbrew{
    margin-bottom: 50px;
}
.drinks-p{
    text-align:left;
    font-size:1.05rem;
    color:var(--bs-gray-700);
}
/*heading*/
.navigate{
    width:100%;
    height:3rem;
    border-bottom:.0001rem solid var(--bs-gray-700) ;
    box-shadow: .3rem .3rem .3rem var(--bs-gray-400);
    margin-bottom: 2rem;
}
.navigate h3{
    padding:.1rem .9rem;
    font-size: .95rem;

}
.navigate p{
    padding:.1rem .9rem;
    font-size: .9rem;
}
.navigate p a{
    color:var(--bs-gray-600);
}
/*navigate ends*/
.product_container{
display: grid;
grid-template-columns: 1fr 1fr 1fr;

}
.expressoa-title,.expressoa-title1,.expressoa-title2,.expressoa-title3,.expressoa-title4{
    padding-left:50px;
    padding-right: 50px;
    font-size:1.45rem;
    color:var(--bs-orange);
    margin-bottom:1rem;
}
.beverage-title h3{
    font-weight: 600;
}
.expressoa-p,.expressoa-p1,.expressoa-p2,.expressoa-p3,.expressoa-p4{
    padding-left:50px;
    padding-right: 50px;
    font-size:1.05rem;
    color:var(--bs-gray-700);
    margin-top: 0;
    margin-bottom:3rem;
}
.p-1,.p-2{
    font-weight: 500;

}
#truncate-text {
    white-space: nowrap;      /* Prevent text from wrapping to the next line */
    overflow: hidden;         /* Hide any overflowing content */
    text-overflow: ellipsis;  /* Display an ellipsis (...) when the text overflows */
    max-width: 300px;         /* Adjust the maximum width as needed */
}


.beverage-container{
    margin-top: 0;
    width: 416px;
    height:232px;
    background: #f9f9f9;
    border:1px solid var(--bs-gray-600);
    box-shadow:1px 1px 1px var(--bs-gray-600);
    border-radius:3px;
}
.beverage-container:hover{
    background:white;
    box-shadow:3px 3px 3px var(--bs-gray-600);
    border-radius:3px;
}

.beverage-img-content-cost{
    display:grid;
    grid-template-columns:166px 250px ;
   
}

.beverage-image img{
    width:150px;
    height: 150px;
    object-fit: cover;
    border-radius: 50%;
    padding:15px 15px 19px 20px;
}
.beverage-content-cost{
    padding: 0 10px 0 0;
    margin-top: 1.2rem;
}
.beverage-vegimg{
    margin-top: 0;
    margin-bottom: 10px;

}
.beverage-title{
    color:var(--bs-teal);
    font-size:0.9rem;
    margin-top: 0;
    margin-bottom: 10px;
}
.beverage-message-1{
    color:var(--bs-gray-500);
    font-size:0.75rem;
    margin-top: 0;
    margin-bottom: 10px;
}
.beverage-message-2{
    color:var(--bs-gray-700);
    font-size:0.85rem;
    margin-top: 0;
    margin-bottom: 35px;
}
.beverage-costdetail{
    display:flex;
    flex-direction:row;
    justify-content: space-between;
    margin-top: 0;
    color:var(--bs-gray-700);
}
.cost{
    font-size:1.5rem;

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
.beverages{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    column-gap:1rem;
    row-gap: 2rem;
    padding-left:50px;
    padding-right: 50px;
} 
.beverages1{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    column-gap:1rem;
    row-gap: 2rem;
    padding-left:50px;
    padding-right: 50px;
}
/*.beverages2{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    column-gap:1rem;
    row-gap: 2rem;
    padding-left:50px;
    padding-right: 50px; 
}
.beverages3{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    column-gap:1rem;
    row-gap: 2rem;
    padding-left:50px;
    padding-right: 50px; 
} */
.beverages4{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    column-gap:1rem;
    row-gap: 2rem;
    padding-left:50px;
    padding-right: 50px; 
}
/* frappucino*/
.Frappucino{
    margin-top: 0;
    margin-bottom:3rem;
}
/*brewed*/
.Brewedcoffee{
    margin-top: 0;
    margin-bottom:3rem;
}
.Tea{
    margin-top: 0;
    margin-bottom:3rem; 
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
/*responsive*/
@media (max-width:412px){
    html{
        font-size:80%;
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
    .beverages{
        grid-template-columns: 1fr;
        padding-left:10px;
        padding-right: 50px;
    }
    .beverages1{
        grid-template-columns: 1fr 1fr 1fr;
        padding-left:10px;
        padding-right: 50px;
    }
    .beverages2{
        grid-template-columns: 1fr;
        padding-left:10px;
        padding-right: 50px;
    }
    .beverages3{
        grid-template-columns: 1fr;
        padding-left:10px;
        padding-right: 50px;
    }
    .beverages4{
        grid-template-columns: 1fr;
        padding-left:10px;
        padding-right: 50px;
    }
    section{
        padding-right: .6rem;
    }
    .product{
        grid-template-columns: 1fr;
        
    }
    .beverage-image img{
        width: 120px;
        height:140px;
        object-fit: cover;
    }
    .drinks{
        position: relative;
        right: 7rem;
    }
    .bestsellers{
       position: relative;
       right: 7rem;
    }
    .beverage-container{
        width:100%;
    }
    .beverage-img-content-cost{
        display:grid;
        grid-template-columns:130px 250px ;
        
    }
    .coffee-content{
        padding-left: 1rem;
    }
  
}
	
        </style>
    
</head>
<body>
	
	<%@ include file="header.jsp" %>
  <section class="menu">
           <div class="product">
            <div class="bestsellers">
                <div class="bestsellers-image">
              <a href="#"> <img src="https://iili.io/J97xOru.jpg" alt=""></a>
              
            </div>
               <div class="bestsellers-p">ENJOY YOUR COFFEE</div>
            </div>
            <div class="drinks"> 
               
                <div class="drinks-image">
                    <a href="#">    <img src="https://iili.io/J97zE6F.jpg" alt=""></a>
                    
                 </div>
              <div class="drinks-p">ENJOY YOUR DAY</div>
            </div>
        </div>
        </section>
        <div class="navigate">
            <h3>Drinks</h3>
            <p><a href="#">Indulge in the rich aroma and robust flavors of our meticulously crafted coffee, an exquisite experience that will awaken your taste buds and elevate your day</p>
        </div>
        <section class="Expressoa" id="Expressoa">
            <h3 class="expressoa-title"></h3>

            
		
                </section>
                <section>
                    <div class="beverages1">
                        
                   
 <% List<Product> productList = (List<Product>) request.getAttribute("ProductList"); %>
<% for(Product product : productList ){ %>
            <div class="beverage-container">
            
                <div class="beverage-img-content-cost">
                <div class="beverage-image">
                    <img src="https://iili.io/J97on94.jpg" alt="">
                </div>
                <div class="beverage-content-cost">
                <div class="beverage-content">
                    <div class="beverage-vegimg">
                        <img src="" alt="">
                    </div>
                    <div class="beverage-title"><h3> <%=  product.getName()    %></h3></div>
                    
                    <div class="beverage-message-2" id="truncate-text"><p> <%=  product.getDescription()   %> </p></div>
                </div>
                <div class="beverage-costdetail">
                
                <%for (Price price : product.getPriceList()) {%>
                <%if(price.getSize().getSizeId()==2){ %>
				 <div class="cost">Rs <%= price.getPrice()   %></div>
				  <% } %>
                    <% } %>
                    <div class="add-item"><a href="product_detail?product_id=<%=product.getProduct_id() %>"><button>view item</button></a></div>
                </div>
            </div>
            </div>
            </div>
            
<%}%>
</div>
  
  </section>

   

</body>
</html>



   