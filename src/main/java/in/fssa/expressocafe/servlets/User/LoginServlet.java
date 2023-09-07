package in.fssa.expressocafe.servlets.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.PersistanceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;




	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserService userService = new UserService();

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		if (email == null || " ".equals(email)) {
			out.println("Invalid Email");
			response.sendRedirect("login.jsp?errorMessage=Invalid Email");

		} else if (password == null || "".equals(password)) {
			response.sendRedirect("login.jsp?errorMessage=Invalid Password");

		}
		
		 if(("admin123@gmail.com").equals(email) &&   ("asdA123!@").equals(password) ){
			try {
				userService.loginUser(email, password);
				session.setAttribute("loggedUser", email);
				// admin header
				// profile
				// logout mandatory 
				// bug in create product 
				// add get all prices  
				// get all prices with product id
				response.sendRedirect(request.getContextPath()+"/getProducts");
			} catch (ValidationException e) {
				e.printStackTrace();
				response.sendRedirect("login.jsp?errorMessage="+e.getMessage());
			} catch (ServiceException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			try {
				userService.loginUser(email, password);
				session.setAttribute("loggedUser", email);
				response.sendRedirect(request.getContextPath()+"/index");
			} catch (ValidationException e) {
				e.printStackTrace();
				String getError = e.getMessage();
				//String errorArray[] = getError.split(":");
				response.sendRedirect("LoginNew?error=" + getError);

			} catch (ServiceException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				String getError = e.getMessage();
			//	String errorArray[] = getError.split(":");
				response.sendRedirect("LoginNew?error=" + getError);

			}
		}
	}
}