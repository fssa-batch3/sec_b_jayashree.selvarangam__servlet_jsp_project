package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.model.Category;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.CategoryService;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class StartIndexServlet
 */
@WebServlet("/StartIndexServlet")
public class StartIndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StartIndexServlet() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductService prod = new ProductService();
		CategoryService cate = new CategoryService();
		try {
			
			List<Product> prodList = prod.getAllProducts();
			List<Category> cateList = cate.getAllCategories();
			
			
			
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
