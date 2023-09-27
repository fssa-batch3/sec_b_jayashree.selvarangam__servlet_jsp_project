package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class ListAllProductsToUsers
 */
@WebServlet("/list_of_products")
public class ListAllProductsToUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAllProductsToUsers() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService productservice = new ProductService();
		List<Product> productList = null;
		try {
			String categoryId =request.getParameter("cate_id");
			if(categoryId==null) {
			 productList = productservice.getAllProducts();
			
		}
		else {
			int cateId = Integer.parseInt(categoryId);
			 productList = productservice.getAllproductswithCategoryId(cateId);
				
		}
			request.setAttribute("ProductList", productList);
			RequestDispatcher rd = request.getRequestDispatcher("list_all_products.jsp");
			rd.forward(request, response);
			
		} catch (ServiceException e) {
			e.printStackTrace();
			String getError = e.getMessage();
			response.sendRedirect(request.getContextPath()+"/list_all_products.jsp?error=" + getError);
		} catch (ValidationException e) {
			e.printStackTrace();
			String getError = e.getMessage();
			response.sendRedirect(request.getContextPath()+"/list_all_products.jsp?error=" + getError);
		}	
	}	
}
