package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Cart;
import in.fssa.expressocafe.model.Order;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.OrderService;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class GetPlaceOrderServlet
 */
@WebServlet("/get_all_order")
public class GetAllOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllOrderServlet() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		OrderService orderService = new OrderService();
		HttpSession session = request.getSession();
	
		String email = (String)session.getAttribute("loggedUser");
		
		UserService userService = new UserService();
		User user = null ;
		List<Order> orderList = null;
		
		try {
			user = userService.findByEmail(email);
			orderList =  orderService.GetAllOrder(user.getId());		
		} catch (ValidationException | ServiceException e) {
			e.printStackTrace();
			String getError = e.getMessage();
			request.setAttribute("errorMessage", getError);
			RequestDispatcher rd = request.getRequestDispatcher("/order.jsp");
			rd.forward(request, response);
		} catch (in.fssa.expressocafe.exception.ServiceException e) {
			e.printStackTrace();
			String getError = e.getMessage();
			request.setAttribute("errorMessage", getError);
			RequestDispatcher rd = request.getRequestDispatcher("/order.jsp");
			rd.forward(request, response);
		}
		request.setAttribute("orderList", orderList);
		RequestDispatcher rd = request.getRequestDispatcher("/order.jsp");
		rd.forward(request, response);
		
	}
}
