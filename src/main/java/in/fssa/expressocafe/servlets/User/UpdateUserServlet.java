package in.fssa.expressocafe.servlets.User;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

@WebServlet("/user/update")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		String userIdParam = request.getParameter("userid");
		int userId = Integer.parseInt(userIdParam);

		User user = new User();

		user.setFirstName(request.getParameter("firstName"));
		user.setLastName(request.getParameter("lastName"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		user.setPhoneNo(Long.parseLong(request.getParameter("phoneNumber")));

		UserService userService = new UserService();

		try {
			userService.updateUser(userId, user);
			response.sendRedirect(request.getContextPath() + "/users");
		} catch (ServiceException | ValidationException e) {
			e.printStackTrace();
		}
	}

}
