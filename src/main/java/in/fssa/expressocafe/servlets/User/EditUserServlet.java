package in.fssa.expressocafe.servlets.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/user/edit")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserService();
		
		String userId = request.getParameter("userid");
		int userid = Integer.parseInt(userId);
		try {
			User user = userService.findByUserId(userid);
			request.setAttribute("userDetails", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/update_user.jsp");
			dispatcher.forward(request, response);
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (com.google.protobuf.ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}