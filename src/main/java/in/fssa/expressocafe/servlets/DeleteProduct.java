package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/product/delete")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId =  Integer.parseInt(request.getParameter("productId"));
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		
		try {
			productService.deleteProduct(productId);
			out.println("Product Deleted Successfully");
			response.sendRedirect(request.getContextPath()+ "/getProducts");
			
		}catch (ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		} catch (ValidationException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}
}
}