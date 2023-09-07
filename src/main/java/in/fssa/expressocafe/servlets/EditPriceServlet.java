package in.fssa.expressocafe.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.DAO.PriceDAO;
import in.fssa.expressocafe.exception.PersistanceException;
import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.PriceService;
import in.fssa.expressocafe.service.ProductService;

/**
 * Servlet implementation class EditPriceServlet
 */
@WebServlet("/edit")
public class EditPriceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPriceServlet() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName = request.getParameter("product_name");
		ProductService pro = new ProductService();
		try {
			int pd = pro.getProductIdByProductName(productName);
			int sd = Integer.parseInt( request.getParameter("sizeId"));
			PriceDAO price = new PriceDAO();
			int price1 = price.findPriceByProductIdAndSizeId(pd, sd);
			request.setAttribute("price", price1);
			request.setAttribute("proId", pd);
			request.setAttribute("sizeId", sd);
			RequestDispatcher rd = request.getRequestDispatcher("/update_product_price.jsp");
			rd.forward(request, response);
		}  catch (PersistanceException e) {
			e.printStackTrace();
			//out.println(e.getMessage());
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		}
	}
	

}
