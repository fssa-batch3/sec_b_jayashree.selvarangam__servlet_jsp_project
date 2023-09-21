
<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.model.DeliveryAddresses"%>
<%@page import="java.util.List"%>
<html>
<head>
<title>Insert title here</title>

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
        .address_container{
            border: 1px solid wheat;
            border-radius: 15px;
            padding: 10px 15px 10px 15px;
            margin: 30px;
            background-color:var(--bs-gray-400);
            box-shadow: 3px 3px var(--bs-gray-600);
        }
        *{
            color:var(--bs-gray-800)
        }
        .add_address img {
    margin-left: 10px;
    border-style: inset;
    color: teal;
}
        .show_address{
            margin-top: 30px;
        }
        #edit{
            /* padding: 5px 25px;
            border-radius: 5px;
            position: relative;
            bottom: 30px; 
            background-color: #debb79; */
            padding: 5px 25px;
    border-radius: 5px;
    /* position: relative; */
    /* bottom: 30px; */
    /* background-color:var(--bs-teal); */
        }
        .add_address{
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 50px;
        }
        .add_address img{
            margin-left:10px;
            border-style: inset;
        }
        .single_address{
            display: flex;
            flex-direction: row;
            margin:30px 60px;
            overflow-x: scroll;
        }
        .address1{
            max-width: 500px;
            width: 250px;
            height: 280px;
        }
        .address_type{
            text-align: center;
            margin-top:10px;
        }
        /* .main_address{
            padding: 10px 10px;
            width: 300px;
        } */
        .main_address {
    padding: 10px 10px;
    width: 300px;
    margin: 30px;
}
#default_id{
    
    position: relative;
    bottom: 10px;
    color:teal
}
#default_id:hover{
    color:var(--bs-gray-600);
}
 .default123 {
    border-style: none;
    border-radius: 50px;
    width: 70%;
    padding: 5px;
    background:teal;
    color: white;
    border-color: unset;
    align-items: center;
    text-align: center;
}
.button {
    width: 100%;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
}

#edit {
    padding: 5px 25px;
    border-radius: 5px;
    /* position: relative; */
    /* bottom: 30px; */
    position: relative;
    bottom: 10px;
    /* background-color: #debb79; */
}
.main_address h3{
    margin:5px 0px;
    height:125px ;
}

.main_address{
    padding: 10px 10px;
    width: 100%;
    margin: 5%;
    display: flex;
    flex-direction: column;
    align-items: center;
}
.single_address::-webkit-scrollbar {
 display: none;
}
       
    /* .default {
 */    /* position: absolute;
    
    /* text-align: center; */
    /* padding-left: 75px;
} */ 

        .button{
            width: 100%;
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
        }
.go{
    margin-left: 50px;
    font-weight: bold;

}
.go:hover{
    color:var(--bs-teal)
}

    </style>
	</head>
	<body>
<% List<DeliveryAddresses> addressList = (List<DeliveryAddresses>) request.getAttribute("addressList");  %>

    <section class="add_address">
        <div class="add_address">
            <h2>Add Address</h2>
         <a href="/address/address_form"> <img src="../assets/image/download1234.png" alt="" width="35px"></a>
        </div>
    </section>
    <section class="show_address">
        <div class="single_address">

        <% for(DeliveryAddresses deliveryAddress : addressList){ %>
        <div class="address_container">
            <div class="address1">
                    <div class="address">
                        <h2 class="address_type"><%= deliveryAddress.getTitle() %></h2>
                        <div class="main_address">
                      
                        <h3 class="address_info2"><%= deliveryAddress.getAddress() %> <%= deliveryAddress.getLandmark() %><%= deliveryAddress.getCity() %></h3>
                        <% if( deliveryAddress.getStatus() == 1 ){ %>
                        <p class="default123">default</p>
                        <% } %>
                        
                        
                        </div>
                    </div>
                    <div class="button">
                        <a href="../address/address_edit.html?address_id=58508718-2607-4f7e-870b-98039c4eea9d"> <button id="edit" data-id="58508718-2607-4f7e-870b-98039c4eea9d">Edit</button> </a>
                    </div>
                    <div class="default">
                       <% if( deliveryAddress.getStatus() == 0 ){ %>
                        <a href ="<%= request.getContextPath()%>/set_default_address"></a><h4 id="default_id">set as default</h4></a>
                        <% } %>
                    </div>
            </div>
        </div>
        
       <%} %>
        </div>
       

    </section>
    <p class="go"><a href="../pages/add to cart/addtocart.html">Go to add to cart </a></p>
    </body>
    </html>