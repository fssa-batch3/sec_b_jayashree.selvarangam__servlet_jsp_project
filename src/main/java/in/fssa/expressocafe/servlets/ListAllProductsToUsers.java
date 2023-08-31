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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ProductService productservice = new ProductService();
		try {
			
		List<Product> productList = productservice.getAllProducts();
		request.setAttribute("ProductList", productList);
		RequestDispatcher rd = request.getRequestDispatcher("list_all_products.jsp");
		rd.forward(request, response);
		
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	
}
