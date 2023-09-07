package in.fssa.expressocafe.servlets.User;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

@WebServlet("/users")
public class GetUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		PrintWriter out = response.getWriter();
//		UserService userService = new UserService();
//		try {
//			Set<User> userList = userService.getAll();
//			out.println(userList);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		UserService userService = new UserService();
		Set<User> userList = userService.getAllUsers();
		
		request.setAttribute("users", userList);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("get_all_users.jsp");
		rd.forward(request, response);
	}
}