package in.fssa.expressocafe.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.DeliveryAddresses;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.DeliverAddressService;

/**
 * Servlet implementation class UpdateAddressServlet
 */
@WebServlet("/update_address")
public class UpdateAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAddressServlet() {
        super();

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the form parameters
    	int userId =  Integer.parseInt(request.getParameter("user_id"));
        int addressId = Integer.parseInt(request.getParameter("address_id"));
        String title = request.getParameter("title");
        String address = request.getParameter("address");
        String landmark = request.getParameter("land_mark");
        String city = request.getParameter("city");
        int pincode = Integer.parseInt(request.getParameter("pincode"));

        // Create a new DeliveryAddresses object with the updated information
        DeliveryAddresses updatedAddress = new DeliveryAddresses();
        updatedAddress.setAddressId(addressId);
        updatedAddress.setTitle(title);
        updatedAddress.setAddress(address);
        updatedAddress.setLandmark(landmark);
        updatedAddress.setCity(city);
        updatedAddress.setPincode(pincode);
        User u = new User();
        u.setId(userId);
        updatedAddress.setUser(u);

        // Call a service or DAO method to update the address in the database
        DeliverAddressService deliveryService = new DeliverAddressService();
        try {
            deliveryService.updateAddress(addressId,updatedAddress);
            request.setAttribute("address",updatedAddress);
	        RequestDispatcher rd = request.getRequestDispatcher("/address_profile");
	        rd.forward(request, response);
        } catch (ServiceException | ValidationException e) {
            e.printStackTrace();
            // Handle the exception, possibly by displaying an error message to the user
        }

      
    }
}
