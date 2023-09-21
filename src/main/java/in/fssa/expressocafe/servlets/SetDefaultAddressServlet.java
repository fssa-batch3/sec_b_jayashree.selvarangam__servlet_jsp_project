package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.DeliveryAddresses;
import in.fssa.expressocafe.service.DeliverAddressService;

/**
 * Servlet implementation class SetDefaultAddressServlet
 */
@WebServlet("/set_default_address")
public class SetDefaultAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetDefaultAddressServlet() {
        super();
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("in dopost of setDefaultAddress");
        // Get the 'address_id' and 'user_id' from the request parameters
        String addressId = request.getParameter("address_id");
        String userId = request.getParameter("user_id");

        
        // Convert addressId and userId to integers (you may need to handle validation)
        int addressIdInt = Integer.parseInt(addressId);
        int userIdInt = Integer.parseInt(userId);
        System.out.println("addressIdInt"+addressIdInt);
        System.out.println("addressIdInt"+userIdInt);
        

        // Use your service methods to get the address ID with status 1 and update its status to 0
        DeliverAddressService deliveryService = new DeliverAddressService();
        
        String loggedUserUniqueEmail = (String) request.getSession().getAttribute("loggedUser");
   	 	DeliveryAddresses address = (DeliveryAddresses) request.getAttribute("address");
   	 	DeliverAddressService addressService = new DeliverAddressService();
   	 	List<DeliveryAddresses> addressList = null;
        try {
            // Get the address ID with status 1
            int defaultAddressId = deliveryService.getAddressesByUserIdAndStatus(userIdInt, 1);
            System.out.println("defaultAddressId"+defaultAddressId);
            // Check if a default address was found
            if (defaultAddressId >= 0) {
                // Update the status of the default address to 0
                deliveryService.updateAddressStatus(defaultAddressId, 0);
                deliveryService.updateAddressStatus(addressIdInt,1);
            } 
            addressList = addressService.findAllAddressesByUserEmail(userIdInt);
        } catch (ServiceException e) {
            e.printStackTrace();
            // Handle the ServiceException as needed (e.g., show an error message);
        }
		 catch (ValidationException e ) {
			e.printStackTrace();
		}
       // Set the address list as an attribute in the request
       request.setAttribute("addressList",addressList);
       // Forward the request to the viewAddressProfile.jsp page
       RequestDispatcher dispatcher = request.getRequestDispatcher("/viewAddressProfile.jsp");
       dispatcher.forward(request, response);
    }
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request,response);
    }
}
