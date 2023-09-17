package in.fssa.expressocafe.servlets.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.expressocafe.exception.PersistanceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class LogoutUser
 */
@WebServlet("/user/logout")
public class LogOut extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//int userId = Integer.parseInt(request.getParameter("userId"));
	

		HttpSession session = request.getSession();
		String attributeName = "loggedUser";
		session.removeAttribute(attributeName);
		session.invalidate();

		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}
}