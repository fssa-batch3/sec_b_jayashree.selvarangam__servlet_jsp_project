package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class ListProductDetail
 */
@WebServlet("/details")
public class ListProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListProductDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		
		int productId = Integer.parseInt(request.getParameter("productId"));
		System.out.print(productId); 
		
		ProductService productService = new ProductService();
		Product prod = new Product();
		try {
			
			prod =  productService.findProductWithProductId(productId);
			request.setAttribute("productDetails", prod);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			RequestDispatcher rd = request.getRequestDispatcher("/product_details.jsp");
			rd.forward(request, response);
			
		}catch (ServiceException e) {
			e.printStackTrace();

		}catch (ValidationException e) {
			e.printStackTrace();
		}
		
	}

	
}
