<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
 <form action="create" method="POST">
 
        <label for="name">Product Name:</label>
        <input type="text"  name="name" required><br><br>
        
        <label for="description">Product Description:</label><br>
        <textarea  name="description"  required></textarea><br><br>
        
         <label for="category">category:</label>
        <input type="number" name ="category"   required><br><br>
        
        <label for="large-price">Large Price:</label>
        <input type="number" name ="large-price"   required><br><br>
        
        <label for="medium-price">Medium Price:</label>
        <input type="number"  name="medium-price"  required><br><br>
        
        <label for="small-price">Small Price:</label>
        <input type="number"  name="small-price"  required><br><br>
        
        <button type="submit" value="Submit">submit</button>
    </form>
</body>
</html>