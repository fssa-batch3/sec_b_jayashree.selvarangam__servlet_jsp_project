package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
		
		System.out.println("in post ");
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		List<Cart> cart_list = (List<Cart>) session.getAttribute("cart_list");
		String email = (String)session.getAttribute("loggedUser");
		double orderCost = (double) session.getAttribute("total");
		UserService userService = new UserService();
		User user = null ;
		try {
			user = userService.findByEmail(email);
			OrderService orderService = new OrderService();
			orderService.CreateOrder(cart_list,user.getId() , 2 ,orderCost);
			
			
		}catch (ServiceException e) {
			e.printStackTrace();	
		}catch (ValidationException | com.google.protobuf.ServiceException e) {
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/get_all_order");
		rd.forward(request, response);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}
	

}
