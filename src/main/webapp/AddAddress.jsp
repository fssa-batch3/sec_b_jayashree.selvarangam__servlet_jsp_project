<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    	
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/login.css">
       <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/signup.css"><!-- Replace with your CSS file path -->
    <title>Address page</title>
</head>
<body class="profile">
    <h1 class="heading">ADD ADDRESS</h1>
    <form action="new_address" method="POST" onsubmit="return validateForm()">
       
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" class="box" required>
      
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" class="box" required>
   
            <label for="land_mark">Land Mark:</label>
            <input type="text" id="city" name="land_mark" class="box" required>
        <!-- Add more form fields as needed -->

            <label for="city">City:</label>
            <input type="text" id="city" name="city" class="box" required>
       <!--  
            <label for="mobileNumber">Mobile Number:</label>
            <input type="tel" id="mobileNumber" name="mobileNumber" class="box" required>
         -->
       
            <label for="pincode">Pincode:</label>
            <input type="number" id="pincode" name="pincode" class="box" required>

        <button type="submit" class="btn">Submit</button>
         <script>
        function validateForm() {
            // Validate pincode (must be 6 digits)
            const pincodeInput = document.getElementById("pincode");
            if (!/^\d{6}$/.test(pincodeInput.value)) {
                alert("Pincode must be a 6-digit number.");
                return false; // Prevent form submission
            }
            // You can add more validation rules here for other fields
            // Ask for confirmation before submission
            const isConfirmed = confirm("Are you sure you want to submit this address?");
            return isConfirmed;
        }
    </script>
    </form>
</body>
</html>
