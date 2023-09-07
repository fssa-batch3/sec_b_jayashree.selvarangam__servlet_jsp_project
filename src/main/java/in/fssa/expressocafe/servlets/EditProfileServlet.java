package in.fssa.expressocafe.servlets;

import java.io.IOException;
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
 * Servlet implementation class EditProfileServlet
 */
@WebServlet("/edit_profile")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfileServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userId = Integer.parseInt(request.getParameter("userId"));
        UserService user = new UserService();
        User user1 = null;
        try {
			 user1 = user.findByUserId(userId);
		} catch (ValidationException | ServiceException e){
			e.printStackTrace();
		}
       request.setAttribute("user", user1);
       request.getRequestDispatcher("/edit_profile.jsp").forward(request, response);
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
