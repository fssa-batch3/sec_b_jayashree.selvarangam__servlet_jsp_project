package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class Index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		

		UserService userService = new UserService();

		HttpSession session = request.getSession();
		String loggedUser = (String) session.getAttribute("loggedUser");

		if (loggedUser != null) {
			try {
				User user = (User) userService.findByEmail(loggedUser);
				request.setAttribute("user", user);
				
				System.out.println(loggedUser);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				dispatcher.forward(request, response);

			} catch (ValidationException e) {
				e.printStackTrace();
				out.println(e.getMessage());
			} catch (com.google.protobuf.ServiceException e) {
				e.printStackTrace();
			}
		} else {
			
				
//
//				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
//				dispatcher.forward(request, response);

			
		}

	}

}