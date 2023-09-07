package in.fssa.expressocafe.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Price;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.PriceService;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class UpdatePriceServlet
 */
@WebServlet("/updatePrice")
public class UpdatePriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
			 ProductService pro = new ProductService();
	         PriceService priceService = new PriceService();
			try {
	        	int productId =Integer.parseInt(request.getParameter("product_id")) ;
		        int sizeId = Integer.parseInt(request.getParameter("size_id"));
		        int newPrice = Integer.parseInt(request.getParameter("price"));
		        
	        	Product product =   priceService.updatePrice(productId, sizeId, newPrice);
	         	request.setAttribute("updatedProduct", product);
	          
	            RequestDispatcher rd = request.getRequestDispatcher("view_update_price.jsp");
				rd.forward(request, response);	
	        } catch (ServiceException e) {
	            e.printStackTrace();          
				String getError = e.getMessage();
				response.sendRedirect("error?error=" + getError);
				
	        } catch (ValidationException e) {
	            e.printStackTrace();
				String getError = e.getMessage();
				response.sendRedirect("error?error=" + getError);
	        }
	    }
}
