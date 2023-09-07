package in.fssa.expressocafe.servlets;

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
import in.fssa.expressocafe.model.Price;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class ViewProduct
 */
@WebServlet("/product_detail")
public class ViewProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService productService = new ProductService();
		PrintWriter out = response.getWriter();
		String productId = request.getParameter("product_id");
		Gson gson = new Gson();

		if (productId == null) {
			out.println("ProductId is Mandatory");
		} else if (productId == "") {
			out.println("ProductId cannot be empty");
		} else {
			int id = Integer.parseInt(productId);
			try {
				
			Product prod =	productService.findProductWithProductId(id);
			List<Price> priceList = prod.getPriceList(); // Replace with your actual method to retrieve the price list
			Gson gson1 = new Gson();
			String productPricesJson = gson1.toJson(priceList);

			request.setAttribute("prod", prod);
			request.setAttribute("productPricesJson", productPricesJson);

			RequestDispatcher rd = request.getRequestDispatcher("product_detail_to_users.jsp");
			rd.forward(request, response);
				
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
