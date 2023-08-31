package in.fssa.expressocafe.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.protobuf.ServiceException;

import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class EditBookServlet
 */
@WebServlet("/product/edit")
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int id = Integer.parseInt( request.getParameter("productId") );
			
			try {
				Product product = new ProductService().findProductWithProductId(id);
				request.setAttribute("product", product);
				RequestDispatcher rd = request.getRequestDispatcher("/update_product.jsp");
				rd.forward(request, response);
			
			} catch (in.fssa.expressocafe.exception.ServiceException | ValidationException e) {
			
				e.printStackTrace();
			}
			
			
		}
	}


