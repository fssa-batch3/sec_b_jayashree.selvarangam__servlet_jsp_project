package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.model.ResponseEntity;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class AllProdServlet
 */
@WebServlet("/AllProdServlet")
public class AllProdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AllProdServlet() {
        super();

    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Product> productList;
		try {
			productList = new ProductService().getAllProducts();
			request.setAttribute("productList", productList);
			
			Gson gson = new Gson();
			ResponseEntity res = new ResponseEntity();
			res.setStatusCode(200);
			res.setData(productList);
			res.setMessage("product details fetched successfully");
			
			String responseJson = gson.toJson(res);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(responseJson);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
//			dispatcher.forward(request, response);
			
		} catch (ServiceException e) {

			e.printStackTrace();
			throw new ServletException(e);
		}

	}
}
