<!DOCTYPE html>
<%@page import="in.fssa.expressocafe.model.DeliveryAddresses"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Address</title>
       <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/login.css">
       <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/signup.css">
</head>
<body>
    <h1>Edit Address</h1>
    <% DeliveryAddresses d = (DeliveryAddresses)request.getAttribute("editAddress"); %>
    <% int addressId =(int) request.getAttribute("addressId"); %>
    <% int userId =(int) request.getAttribute("userId"); %>
    <form action="update_address" method="POST" onsubmit="return validateForm()">
        <input type="hidden" name="address_id" value="<%= addressId %>">
         <input type="hidden" name="user_id" value="<%= userId %>">
        
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" class="box" value="<%= d.getTitle()   %>" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" class="box" value="<%= d.getAddress() %>" required>

        <label for="land_mark">Land Mark:</label>
        <input type="text" id="land_mark" name="land_mark" class="box" value="<%= d.getLandmark() %>" required>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" class="box" value="<%= d.getCity() %>" required>

        <label for="pincode">Pincode:</label>
        <input type="number" id="pincode" name="pincode" class="box" value="<%= d.getPincode()  %>" required>

        <button type="submit" class="btn">Update</button>
    </form>

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
            const isConfirmed = confirm("Are you sure you want to update this address?");
            return isConfirmed;
        }
    </script>
</body>
</html>
