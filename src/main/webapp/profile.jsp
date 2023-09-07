<%@page import="in.fssa.expressocafe.model.User"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" 
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
          <link rel="preconnect" href="https://fonts.googleapis.com">
          <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
          <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
          <link rel="preconnect" href="https://fonts.googleapis.com">    
    <meta charset="UTF-8">
    <title>User Profile</title>
   <style>
   /* style.css */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
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

.container {
    max-width: 600px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

h2 {
    margin-bottom: 20px;
    text-align: center;
}

ul {
    list-style: none;
    padding: 0;
}

li {
    margin-bottom: 10px;
}

.actions {
    text-align: center;
    margin-top: 20px;
}

a {
    text-decoration: none;
    color: #007bff;
    margin: 0 10px;
}

a:hover {
    text-decoration: underline;
}
   ]</style>
   
</head>
<body>
	  <%@ include file="header.jsp" %>
      <% User user =  (User) request.getAttribute("user"); %> 
 
    <div class="container">
        <h2>Welcome, <%= user.getFirstName() %></h2>
        <ul>
            <li><strong>First Name:</strong> <%= user.getFirstName() %></li>
            <li><strong>Last Name:</strong> <%= user.getLastName() %></li>
            <li><strong>Email:</strong> <%= user.getEmail() %></li>
            <li><strong>Phone Number:</strong> <%= user.getPhoneNo() %></li>
        </ul>
        <div class="actions">
            <a href="<%= request.getContextPath() %>/edit_profile?userId=<%=user.getId()   %>">Edit Profile</a>
            <a href="<%= request.getContextPath() %>/user/logout?userId=<%= user.getId()  %>">Logout</a>
        </div>
    </div>
</body>
</html>
