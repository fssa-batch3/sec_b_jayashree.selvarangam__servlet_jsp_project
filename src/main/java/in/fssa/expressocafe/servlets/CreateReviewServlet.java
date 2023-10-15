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

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.model.Review;
import in.fssa.expressocafe.model.User;
import in.fssa.expressocafe.service.ReviewService;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class CreateReviewServlet
 */
@WebServlet("/create_review")
public class CreateReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateReviewServlet() {
        super();

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.print(true);
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        // Get review details from request parameters
      
        int userId = (int) request.getAttribute("userId");
        int orderId = (int) request.getAttribute("orderId");
        int reviewStar = (int) request.getAttribute("reviewStar");
        String reviewMessage = (String)request.getAttribute("reviewMessage");
        
        ReviewService reviewService = new ReviewService();
        UserService userService = new UserService();
		User user = null ;
		
		try {
            // Create a Review object and submit the review
            Review review = new Review();
            review.setUser(user);
	          //  Order order = new Order();
	          //   order.setOrderId(orderId);
	          //  review.setOrder(order);
            review.setReviewStar(reviewStar);
            review.setReviewMessage(reviewMessage);
            reviewService.createReviewService(userId,orderId,reviewStar,reviewMessage);

            // Redirect to the getAllOrder servlet after review submission
        	RequestDispatcher rd = request.getRequestDispatcher("/get_all_order");
    		rd.forward(request, response);	
    		
        } catch (ServiceException e) {
            e.printStackTrace();
            String getError = e.getMessage();
            request.setAttribute("errorMessage", getError);

            // Redirect to the review page with an error message
            response.sendRedirect(request.getContextPath() + "/review.jsp?error=" + getError);

        }
	

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.print(false);
        // Get values from URL parameters
        int orderId = Integer.parseInt(request.getParameter("order_id"));
        int userId = Integer.parseInt(request.getParameter("user_id"));
        int reviewStar = Integer.parseInt(request.getParameter("review_star"));
        String reviewMessage = request.getParameter("review_message");

        // You can then use these values as needed
        // For example, you can set them in request attributes for use in JSP
        request.setAttribute("userId", userId);
         request.setAttribute("orderId", orderId);
        request.setAttribute("reviewStar", reviewStar);
        request.setAttribute("reviewMessage", reviewMessage);

        // You can also forward the request to a JSP page or handle it as required
        // For example, forward it to a review page to display the review details
        doPost(request,response);
	 	System.out.print(false+"out");
		  }
}
