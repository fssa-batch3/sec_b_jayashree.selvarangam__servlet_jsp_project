package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.service.OrderService;

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
    			Integer order_id = Integer.parseInt(id);
    			if(id != null) {
    				OrderService orderService = new OrderService();
    				try{
					orderService.cancelOrder(order_id);
					}catch (ServiceException e) {
						e.printStackTrace();
					}
    			}
    			response.sendRedirect(request.getContextPath()+"/order.jsp"); 
    		}
		}

