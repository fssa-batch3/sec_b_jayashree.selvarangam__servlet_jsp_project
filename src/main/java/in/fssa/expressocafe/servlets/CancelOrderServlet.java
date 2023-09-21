package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.sql.SQLException;
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
import in.fssa.expressocafe.model.Order;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.OrderService;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class CancelOrderServlet
 */
@WebServlet("/cancel_order")
public class CancelOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    	public CancelOrderServlet() {
        super();
    	}       
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("id");
			Integer orderId = Integer.parseInt(id);
			List<Order> orderList = new ArrayList<>();
			boolean value = false;
			HttpSession session = request.getSession();

			String email = (String) session.getAttribute("loggedUser");

			UserService userService = new UserService();

			User user = new User();

			if (id != null) {
				OrderService orderService = new OrderService();
				try {
					orderService.cancelOrder(orderId);

					user = userService.findByEmail(email);

					orderList = orderService.GetAllOrder(user.getId());
					
			
				} catch (ServiceException e) {
					e.printStackTrace();
				} catch (ValidationException | com.google.protobuf.ServiceException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			request.setAttribute("orderList", orderList);
		
			RequestDispatcher rd = request.getRequestDispatcher("/order.jsp");
			rd.forward(request, response);

		}
		}

