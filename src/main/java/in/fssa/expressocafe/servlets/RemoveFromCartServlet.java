package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.model.Cart;

/**
 * Servlet implementation class RemoveFromCartServlet
 */

	@WebServlet("/remove-from-cart")
	public class RemoveFromCartServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

				int proId = Integer.parseInt(request.getParameter("product_id"));

				int sizeId = Integer.parseInt(request.getParameter("size_id"));
		
					List<Cart> cart_list = (List<Cart>) request.getSession().getAttribute("cart_list");
					if (cart_list != null) {
						for (Cart c : cart_list) {
							if (c.getProduct_id() == proId && c.getSizeId() == sizeId) {
								cart_list.remove(cart_list.indexOf(c));
								break;
							}
						}
						response.sendRedirect(request.getContextPath()+"/addtocartview.jsp");
					}
					else {
						response.sendRedirect(request.getContextPath()+"/addtocartview.jsp");
					}
					

				} 

			}


