package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class EditProductWithPricesServlet
 */
@WebServlet("/edit_product_with_prices")
public class EditProductWithPricesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductWithPricesServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("productId") );
		 // Create a PrintWriter to send responses to the client
        PrintWriter out = response.getWriter();
       
		try {
			 // Retrieve the product information based on the provided ID
			Product product = new ProductService().findProductWithProductId(id);
			// Set the product as an attribute in the request
			request.setAttribute("product", product);
			 // Forward the request and response to the update_product_with_price.jsp page
			RequestDispatcher rd = request.getRequestDispatcher("/update_product_with_price.jsp");
			rd.forward(request, response);		
		} catch (in.fssa.expressocafe.exception.ServiceException | ValidationException e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
