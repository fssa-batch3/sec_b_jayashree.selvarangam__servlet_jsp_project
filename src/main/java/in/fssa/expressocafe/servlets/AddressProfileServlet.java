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
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.DeliverAddressService;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class AddressProfileServlet
 */
@WebServlet("/address_profile")
public class AddressProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressProfileServlet() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
    	 String loggedUserUniqueEmail = (String) request.getSession().getAttribute("loggedUser");
    	 DeliveryAddresses address = (DeliveryAddresses) request.getAttribute("address");
        DeliverAddressService addressService = new DeliverAddressService();
        List<DeliveryAddresses> addressList = null;
		try {
			addressList = addressService.findAllAddressesByUserEmail(address.getUser().getId());
		} catch (ValidationException | ServiceException e) {
			e.printStackTrace();
		}
        // Set the address list as an attribute in the request
        request.setAttribute("addressList",addressList);
        // Forward the request to the viewAddressProfile.jsp page
        RequestDispatcher dispatcher = request.getRequestDispatcher("/viewAddressProfile.jsp");
        dispatcher.forward(request, response);
    }
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
    	doGet(request,response);
    }
    }

