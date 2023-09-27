package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class UpdateProfileServlet
 */
@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String userIdParam = request.getParameter("userid");
		int userId = Integer.parseInt(userIdParam);

		User user = new User();

		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
	
		user.setPhoneNo(Long.parseLong(request.getParameter("phoneNumber")));

		UserService userService = new UserService();
		User user1 = null;
		try {
			userService.updateUser(userId, user);
			 user1 = userService.findByUserId(userId);
			response.sendRedirect(request.getContextPath() + "/get_profile");
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
			request.setAttribute("user", user1);
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("/edit_profile.jsp");
			rd.forward(request, response);
			
		}
	}

	}


