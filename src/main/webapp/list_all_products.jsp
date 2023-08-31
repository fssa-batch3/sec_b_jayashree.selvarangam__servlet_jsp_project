<%@page import="in.fssa.expressocafe.model.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>coffee shop </title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

 
        <style>

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
/* .beverages1{
    display:grid;
    grid-template-columns:1fr 1fr 1fr;
    column-gap:1rem;
    row-gap: 2rem;
    padding-left:50px;
    padding-right: 50px;
}
.beverages2{
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
        </style>
    
</head>
<body>
  <section class="menu">
           <div class="product">
            <div class="bestsellers">
                <div class="bestsellers-image">
              <a href="#"> <img src="../../assets/image/bestseller.jpg" alt=""></a>
            </div>
               <div class="bestsellers-p">ENJOY YOUR COFFEE</div>
            </div>
            <div class="drinks"> 
               
                <div class="drinks-image">
                    <a href="#">    <img src="../../assets/image/Drinks.jpg" alt=""></a>
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

            
            <div class="beverages">

                </div>
                </section>
                <section>
                    <div class="beverages1">
                        
                    </div>
                </section>
 <% List<Product> productList = (List<Product>) request.getAttribute("ProductList"); %>
<% for(Product product : productList ){ %>
            <div class="beverage-container">
                <div class="beverage-img-content-cost">
                <div class="beverage-image">
                    <img src="" alt="">
                </div>
                <div class="beverage-content-cost">
                <div class="beverage-content">
                    <div class="beverage-vegimg">
                        <img src="../../assets/image/veg.svg" alt="">
                    </div>
                    <div class="beverage-title"><h3> <%=  product.getName()    %></h3></div>
                    
                    <div class="beverage-message-2"><p> <%=  product.getDescription()   %> </p></div>
                </div>
                <div class="beverage-costdetail">
                    <div class="cost">Rs.404</div>
                    <div class="add-item"><a href=""><button>add item</button></a></div>
                </div>
            </div>
            </div>
            </div>
            
<%}%>
  

   

</body>
</html>



   