<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Neuton:ital,wght@0,200;0,300;1,400&display=swap" rel="stylesheet">

<title>Content not found</title>
</head>
<style>
 *{
    font-family: 'Neuton', serif;
    letter-spacing: .3px;
    word-spacing: 3px;
}
img{
margin: 2vh 0 2vh 23vw;
width:50vw;
height:80vh;

}
h1{
font-size:50px;
margin-left:33vw;
margin-top:-2vh;
margin-bottom:7vh;
}
body a{
margin-top:6vh;
margin-left:39vw;
padding:2vh 5vw;
background-color: rgb(4, 87, 181);
color:white;
text-decoration: none;
border-radius:35px;
font-size:18px;
}
body a:hover{
box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;

}
</style>
<body>

<img src="" alt="page not found">


<a href="<%=request.getContextPath() %>/index"> BACK TO HOME</a>
</body>
</html>