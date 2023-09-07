package in.fssa.expressocafe.servlets.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewRegisterServlet
 */
@WebServlet("/new_register_servlet")
public class NewRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    	
    	
    	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		RequestDispatcher rd = request.getRequestDispatcher("register_user.jsp"); 
    		rd.forward(request, response);
    	}}


