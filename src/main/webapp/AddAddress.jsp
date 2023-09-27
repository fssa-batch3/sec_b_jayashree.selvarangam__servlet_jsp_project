<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" 
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <!-- script for sweet alert -->
		<script src="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.all.min.js
		"></script>
		<link href="
		https://cdn.jsdelivr.net/npm/sweetalert2@11.7.28/dist/sweetalert2.min.css
		" rel="stylesheet">
		        <link href="https://fonts.googleapis.com/css2?family=Aclonica&family=Merienda:wght@300;400;500;600&family=Montserrat:wght@400;500&family=Poppins:ital,wght@0,100;0,300;0,400;1,100;1,200;1,300;1,400&family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
    	 <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/header.css">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/footer.css ">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/login.css">
       <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/signup.css"><!-- Replace with your CSS file path -->
    <title>Address page</title>
        <style>
    /* Add this CSS to your stylesheet */

    </style>
</head>
<body class="profile">
<jsp:include page="/header.jsp"></jsp:include>
    <h1 class="heading">ADD ADDRESS</h1>
     <div>
					<%
					String err = request.getParameter("error");
					%>
					<%
					if (err != null) {
					%>
						<script>
					    // Display a Swal alert when the 'err' parameter is not null
					    Swal.fire({
					        icon: 'error',
					        title: 'Error',
					        text: '<%=err%>'
					    });
					</script>
					<%
					}
					%>
				</div>
    <form action="new_address" method="POST" onsubmit="return validateForm()">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" class="box" required pattern="[A-Za-z\s]+" title="only alphabet">
      
            <label for="address">Address:</label>
            <input type="text" id="address" name="address" class="box" required >
   
            <label for="land_mark">Land Mark:</label>
            <input type="text" id="city" name="land_mark" class="box" required >
        <!-- Add more form fields as needed -->
            <label for="city">City:</label>
            <input type="text" id="city" name="city" class="box" required  pattern="[A-Za-z\s]+" title="only alphabet">
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
            if (!/^[6]\d{5}$/.test(pincodeInput.value)) {
                alert("Pincode must be a 6-digit number starting with 6.");
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
