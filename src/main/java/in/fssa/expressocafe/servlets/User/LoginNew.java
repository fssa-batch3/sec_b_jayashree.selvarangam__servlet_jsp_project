package in.fssa.expressocafe.servlets.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.ResponseEntity;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class LoginNew
 */
@WebServlet("/LoginNew")
public class LoginNew extends HttpServlet {
private static final long serialVersionUID = 1L;
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	response.setHeader("Access-Control-Allow-Origin", "*"); // Replace '*' with your allowed origin(s)
	response.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
	response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
	String email = request.getParameter("email");
	System.out.println(email);
	String password = request.getParameter("password");
	System.out.println(password);
	UserService userService = new UserService();
	int userId;
	try {
//		 if user presents returns the user id
		userId = userService.loginUser(email, password);
		if (userId > 0) {
			ResponseEntity res = new ResponseEntity();
			res.setStatusCode(200);
			res.setData(userId);
			res.setMessage("email and password has been cheked in db");
			/* request.getSession().setAttribute("userId", userId); */
			Gson gson = new Gson();
			String responseJson = gson.toJson(res);
			System.out.println("uuu" + responseJson);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(responseJson);
		} else {
			response.setStatus(500); // Internal Server Error
			response.getWriter().write("An error occurred while processing the request.");
		}
	} catch (ValidationException | ServiceException e) {
		ResponseEntity res = new ResponseEntity();
		res.setStatusCode(500);
		res.setMessage(e.getMessage());
		Gson gson = new Gson();
		String responseJson = gson.toJson(res);
		response.setStatus(500); // Internal Server Error
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(responseJson);
		e.printStackTrace();
	}
}
}
