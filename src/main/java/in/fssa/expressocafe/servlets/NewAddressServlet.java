package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class NewAddressServlet
 */
@WebServlet("/new_address")
public class NewAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewAddressServlet() {
        super();

    }
    


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    	    throws ServletException, IOException {
    	System.out.print("in ");
    	    String title = request.getParameter("title");
    	    String address1 = request.getParameter("address");
    	    String landMark = request.getParameter("land_mark");
    	    String city = request.getParameter("city");
    	    int pincode = Integer.parseInt(request.getParameter("pincode"));
			/*
			 * long mobileNumber = 0;
			 * 
			 * if (mobileNumberParam != null && !mobileNumberParam.isEmpty()) { mobileNumber
			 * = Long.parseLong(mobileNumberParam); }
			 */
    	    String loggedUserUniqueEmail = (String) request.getSession().getAttribute("loggedUser");
    	    System.out.println(loggedUserUniqueEmail);
    	    DeliveryAddresses address = new DeliveryAddresses();
    	    address.setTitle(title);
    	    address.setAddress(address1);
    	    address.setLandmark(landMark);
    	    address.setCity(city);
    	    address.setPincode(pincode);
	    	User u =   new User();
	    	u.setEmail(loggedUserUniqueEmail);
	    	UserService user = new UserService();
	    	try {
			u = user.findByEmail(loggedUserUniqueEmail);
	    	address.setUser(u);
    	    DeliverAddressService  deliveryAddress = new DeliverAddressService();
    	    PrintWriter out = response.getWriter();
    	        deliveryAddress.createDeliveryAddress(address);
    	        request.setAttribute("address",address);
    	        RequestDispatcher rd = request.getRequestDispatcher("/address_profile");
    	        rd.forward(request, response);
    	    } catch (ValidationException | ServiceException e){
    	        e.printStackTrace();
    	        String getError = e.getMessage();
				response.sendRedirect("add_address?error=" + getError);
    	        
    	    } catch (com.google.protobuf.ServiceException e){
				e.printStackTrace();
				String getError = e.getMessage();
				response.sendRedirect("add_address?error=" + getError);
				
			} 
    	}
}
