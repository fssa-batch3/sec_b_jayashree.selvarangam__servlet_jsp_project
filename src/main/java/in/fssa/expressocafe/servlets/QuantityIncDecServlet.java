package in.fssa.expressocafe.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.expressocafe.model.Cart;

/**
 * Servlet implementation class QuantityIncDecServlet
 */
@WebServlet("/quantity-inc-dec")
public class QuantityIncDecServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuantityIncDecServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("product_id"));
        int sizeId = Integer.parseInt(request.getParameter("size_id"));
        ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("cart_list");

        if (action != null && id >= 1) {
            if (action.equals("inc")) {
                for (Cart c : cart_list) {
                    if (c.getProduct_id() == id && c.getSizeId() == sizeId) {
                    	if(c.getQuantity() <=10) {
                    		int quantity = c.getQuantity();
                            quantity++;
                            c.setQuantity(quantity);
                            break;
                    	}
                        
                    }
                }
            }

            if (action.equals("dec")) {
                for (Cart c : cart_list) {
                    if (c.getProduct_id() == id && c.getQuantity() > 1 && c.getSizeId() == sizeId) {
                        int quantity = c.getQuantity();
                        quantity--;
                        c.setQuantity(quantity);
                        break;
                    }
                }
            }

            // Redirect after processing
            response.sendRedirect(request.getContextPath() + "/addtocartview.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/addtocartview.jsp");
        }
    }


}


