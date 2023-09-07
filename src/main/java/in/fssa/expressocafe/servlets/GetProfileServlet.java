package in.fssa.expressocafe.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class GetProfileServlet
 */
@WebServlet("/get_profile")
public class GetProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("loggedUser");
        if (email != null) {
            UserService userService = new UserService();
            User user = null;
				try {
					user = userService.findByEmail(email);
				} catch (ValidationException | ServiceException e) {
					e.printStackTrace();
				}
                if (user != null) {
                    request.setAttribute("user", user);
                    request.getRequestDispatcher("/profile.jsp").forward(request, response);
                } 
        }
    }
}
