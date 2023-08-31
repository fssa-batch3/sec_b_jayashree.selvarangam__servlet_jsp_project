package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
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
 * Servlet implementation class FindProductByProductId
 */
@WebServlet("/FindProductByProductId")
public class FindProductByProductIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindProductByProductIdServlet() {
        super();

    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {

	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		String productId = request.getParameter("id");
		Gson gson = new Gson();

		if (productId == null) {
			out.println("Id is Mandatory");
		} else if (productId == "") {
			out.println("Id cannot be empty");
		} else {
			int id = Integer.parseInt(productId);
			try {
				
				String responseJson = gson.toJson(productService.findProductWithProductId(id));
				out.println(responseJson);
			} catch (ServiceException e) {
				e.printStackTrace();
			} catch (ValidationException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
