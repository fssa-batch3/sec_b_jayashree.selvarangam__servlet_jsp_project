package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Cart;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.OrderService;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class PlaceOrderServlet
 */
@WebServlet("/place_order")
public class PlaceOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public PlaceOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(false);
		
		List<Cart> cartList = (List<Cart>) session.getAttribute("cart_list");
		String email = (String)session.getAttribute("loggedUser");
		double orderCost = (double) request.getAttribute("orderCost");
		int addressId = (int) request.getAttribute("addressId");
		String package_type =  (String) request.getAttribute("selectedValue");
		System.out.print(package_type);
		
		UserService userService = new UserService();
		User user = null ;
		try {
			user = userService.findByEmail(email);
			OrderService orderService = new OrderService();
			// change address
			orderService.CreateOrder(cartList,user.getId() , addressId ,orderCost,package_type);
			  List<Cart> itemsToRemove = new ArrayList<>();
	            for (Cart cartItem : cartList) {
	               itemsToRemove.add(cartItem);  
	            }
	            // Remove the ordered items from the cart
	        cartList.removeAll(itemsToRemove);
			session.removeAttribute("total");
			session.removeAttribute("address_id");
		}catch (ServiceException e) {
		
			  e.printStackTrace();
			    String getError = e.getMessage();
			    request.setAttribute("errorMessage", getError);
			    // Redirect to the addtocartview.jsp with an error message
			    response.sendRedirect(request.getContextPath() + "/addtocartview.jsp?error=" + getError);
			
		}catch (ValidationException e) {
			e.printStackTrace();
			String getError = e.getMessage();
		    request.setAttribute("errorMessage", getError);
		    // Redirect to the addtocartview.jsp with an error message
		    response.sendRedirect(request.getContextPath() + "/addtocartview.jsp?error=" + getError);
		}
		 catch( com.google.protobuf.ServiceException e) {
				e.printStackTrace();
				String getError = e.getMessage();
			    
			    // Redirect to the addtocartview.jsp with an error message
			    response.sendRedirect(request.getContextPath() + "/addtocartview.jsp?error=" + getError);
			}
		RequestDispatcher rd = request.getRequestDispatcher("/get_all_order");
		rd.forward(request, response);	
		
	}
	


protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Get values from URL parameters
    double orderCost = Double.parseDouble(request.getParameter("total"));
    int addressId = Integer.parseInt(request.getParameter("address_id"));
    String selectedValue = request.getParameter("selected_value");
    // Set values in request attributes
    request.setAttribute("orderCost", orderCost);
    request.setAttribute("addressId", addressId);
    request.setAttribute("selectedValue", selectedValue);
	doPost(request,response);
	}
}
