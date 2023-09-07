package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.exception.ServiceException;
import in.fssa.expressocafe.exception.ValidationException;
import in.fssa.expressocafe.model.Price;
import in.fssa.expressocafe.model.Product;
import in.fssa.expressocafe.service.PriceService;
import in.fssa.expressocafe.service.ProductService;
import in.fssa.expressocafe.service.UserService;

/**
 * Servlet implementation class GetAllPricesServlet
 */
@WebServlet("/prices")
public class GetAllPricesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetAllPricesServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		PriceService priceService = new PriceService();
		String productName = request.getParameter("product_name");
		String sizeId1 = request.getParameter("sizeId");
		  if  ((productName == null || ("".equals(productName))) && ("".equals(sizeId1) || sizeId1 == null)) {
				List<Price> priceList = null;
				try {
					priceList = priceService.getHistoryOfProuctOnly();
				} catch (ServiceException | ValidationException e) {
					e.printStackTrace();
					
					request.setAttribute("ERRORDETAILS", e.getMessage());
					RequestDispatcher rd = request.getRequestDispatcher("get_all_prices_form");
					rd.forward(request, response);
					
				}
				request.setAttribute("PriceList", priceList);
				out.println("got succ");
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices.jsp");
				rd.forward(request, response);
			 }
		else if ((productName != null || !("".equals(productName))) && ("".equals(sizeId1) || sizeId1 == null)) {
			ProductService pro = new ProductService();
			int productId =0;
			try {
				 productId = pro.getProductIdByProductName(productName);
				List<Price> priceList = priceService.getHistoryOfProuct(productId);
				request.setAttribute("PriceList", priceList);
				out.println("got succ");
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices.jsp");
				rd.forward(request, response);

			} catch (ServiceException e) {
				e.printStackTrace();
				out.print(e.getMessage());
				request.setAttribute("ERRORDETAILS", e.getMessage());
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices_form_by_product_id?product_name"+productName);
				rd.forward(request, response);
			} catch (ValidationException e) {
				e.printStackTrace();
				out.print(e.getMessage());
				request.setAttribute("ERRORDETAILS", e.getMessage());
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices_form_by_product_id?product_name"+productName);
				rd.forward(request, response);
			}

		}

		else if ((productName != null || !productName.isEmpty()) && (sizeId1 != null || !sizeId1.isEmpty())) {
			ProductService pro = new ProductService();
			int productId = 0 ; 
			int sizeId = 0 ;
			try {
				 productId = pro.getProductIdByProductName(productName);
				 sizeId = Integer.parseInt(request.getParameter("sizeId"));

				List<Price> priceList = priceService.getHistoryOfProuctWithUniqueSize(productId, sizeId);
				request.setAttribute("PriceList", priceList);
				out.println("got succ");
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices.jsp");
				rd.forward(request, response);

			} catch (ServiceException e) {
				e.printStackTrace();
				out.print(e.getMessage());
				request.setAttribute("ERRORDETAILS", e.getMessage());
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices_form?product_name"+productName+"&sizeId="+ sizeId);
				rd.forward(request, response);
				
			} catch (ValidationException e) {
				e.printStackTrace();
				out.print(e.getMessage());
				request.setAttribute("ERRORDETAILS", e.getMessage());
				RequestDispatcher rd = request.getRequestDispatcher("get_all_prices_form?product_name"+productName+"&sizeId="+ sizeId);
				rd.forward(request, response);
			}
		}
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
