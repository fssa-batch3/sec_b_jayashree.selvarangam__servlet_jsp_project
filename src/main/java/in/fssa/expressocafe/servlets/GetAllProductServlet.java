package in.fssa.expressocafe.servlets;

//import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

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
import in.fssa.expressocafe.model.SizeEnum;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class ProductCreateServlet
 */
@WebServlet("/getProducts")
public class GetAllProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetAllProductServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		ProductService productService = new ProductService();

		try {
			List<Product> productList = productService.getAllProducts();
			request.setAttribute("ProductList", productList);
			RequestDispatcher rd = request.getRequestDispatcher("get_all_product.jsp");
			rd.forward(request, response);
			
		} catch (ServiceException e) {
			e.printStackTrace();
		}
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
